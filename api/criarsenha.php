<?php
// Permitir acesso de qualquer origem
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

// Dados de conexão ao banco de dados
$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'smb';

// Conectar ao banco de dados MySQL
$conn = new mysqli($host, $user, $password, $dbname);

// Verifica se a conexão foi bem-sucedida
if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => "Falha na conexão: " . $conn->connect_error]));
}

// Receber os dados enviados do Flutter
$data = json_decode(file_get_contents("php://input"), true);

$email = $data['email']; // O email do usuário
$senha = $data['senha']; // A nova senha
$confirmarSenha = $data['confirmarSenha']; // A confirmação da senha

// Verificar se as senhas são iguais
if ($senha !== $confirmarSenha) {
    echo json_encode(["status" => "error", "message" => "As senhas não coincidem."]);
    exit();
}

// Atualizar a senha no banco de dados
$sql = "UPDATE usuarios SET senha = ? WHERE email = ?";
$stmt = $conn->prepare($sql);
$senhaHash = password_hash($senha, PASSWORD_BCRYPT); // Hash da senha para maior segurança
$stmt->bind_param('ss', $senhaHash, $email);

if ($stmt->execute()) {
    echo json_encode(["status" => "success", "message" => "Senha atualizada com sucesso."]);
} else {
    echo json_encode(["status" => "error", "message" => "Erro ao atualizar a senha: " . $stmt->error]);
}

// Fechar a conexão
$stmt->close();
$conn->close();
?>

<?php
// Permitir acesso de qualquer origem
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Dados de conexão
$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'smb';

// Conectar ao banco de dados MySQL
$conn = new mysqli($host, $user, $password, $dbname);

// Verifica se a conexão foi bem-sucedida
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Capturar o email enviado via requisição (usando POST para maior segurança)
$email = $_POST['email'];

// Consulta SQL para verificar se o email existe na tabela 'usuarios'
$sql = "SELECT id, nome, email FROM usuarios WHERE email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

// Verifica se o email foi encontrado
if ($result->num_rows > 0) {
    echo json_encode(["message" => "Email encontrado"]);
} else {
    echo json_encode(["message" => "Email não encontrado"]);
}

// Fecha a conexão com o banco
$stmt->close();
$conn->close();
?>

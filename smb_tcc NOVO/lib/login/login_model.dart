import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';  // Para trabalhar com JSON

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for user widget.
  FocusNode? userFocusNode;
  TextEditingController? userTextController;
  String? Function(BuildContext, String?)? userTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userFocusNode?.dispose();
    userTextController?.dispose();
  }

  Future<void> login(String email) async {
    var url = Uri.parse('http://localhost/smb_tcc/login.php');
    var dados = {'email': email};

    try {
      var response = await http.post(url, body: dados);

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);

        if (jsonResponse['status'] == 'sucesso') {
          // Se o email for encontrado, vá para a página de criar senha
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LOGINcriarsenha()),
          );
        } else {
          // Se o email não for encontrado, vá para o site
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaginaSITEScreen()),
          );
        }
      } else {
        print('Erro na requisição: ${response.statusCode}');
      }
    } catch (e) {
      print('Erro: $e');
    }
  }

}

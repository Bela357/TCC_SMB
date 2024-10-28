import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recuperar_senha_digite_widget.dart' show RecuperarSenhaDigiteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecuperarSenhaDigiteModel
    extends FlutterFlowModel<RecuperarSenhaDigiteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for user widget.
  FocusNode? userFocusNode1;
  TextEditingController? userTextController1;
  String? Function(BuildContext, String?)? userTextController1Validator;
  // State field(s) for user widget.
  FocusNode? userFocusNode2;
  TextEditingController? userTextController2;
  String? Function(BuildContext, String?)? userTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userFocusNode1?.dispose();
    userTextController1?.dispose();

    userFocusNode2?.dispose();
    userTextController2?.dispose();
  }
}

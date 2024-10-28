import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'digite_sua_senha_widget.dart' show DigiteSuaSenhaWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DigiteSuaSenhaModel extends FlutterFlowModel<DigiteSuaSenhaWidget> {
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
}

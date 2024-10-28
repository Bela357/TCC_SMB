import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recuperar_senha_email_model.dart';
export 'recuperar_senha_email_model.dart';

class RecuperarSenhaEmailWidget extends StatefulWidget {
  const RecuperarSenhaEmailWidget({super.key});

  @override
  State<RecuperarSenhaEmailWidget> createState() =>
      _RecuperarSenhaEmailWidgetState();
}

class _RecuperarSenhaEmailWidgetState extends State<RecuperarSenhaEmailWidget> {
  late RecuperarSenhaEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecuperarSenhaEmailModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Stack(
                                      children: [
                                        Stack(
                                          children: [
                                            Stack(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/recuperarsenha.png',
                                                                width: 393.0,
                                                                height: 740.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.01, -1.14),
                                                      child: Container(
                                                        width: 393.0,
                                                        height: 63.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.04, -0.94),
                                                  child: Text(
                                                    'RECUPERAR SENHA',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'CODEC PRO',
                                                          letterSpacing: 1.0,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'CODEC PRO'),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.84, -0.99),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 25.0,
                                  buttonSize: 30.0,
                                  fillColor: Color(0xFF40E0D0),
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 15.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('DigiteSuaSenha');
                                  },
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.25),
                            child: Container(
                              width: 509.0,
                              height: 162.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.44, -0.73),
                    child: FlutterFlowRadioButton(
                      options: [
                        'Email\nEmail.teste@gmail.com',
                        'Celular\n(11)93572-3859'
                      ].toList(),
                      onChanged: (val) => safeSetState(() {}),
                      controller: _model.radioButtonValueController ??=
                          FormFieldController<String>(null),
                      optionHeight: 65.0,
                      textStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                      selectedTextStyle: FlutterFlowTheme.of(context)
                          .titleLarge
                          .override(
                            fontFamily: 'Open Sans',
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Open Sans'),
                          ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor: Color(0xFF40E0D0),
                      inactiveRadioButtonColor: Colors.white,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.34),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('CodigoEnviado');
                  },
                  text: 'OK',
                  options: FFButtonOptions(
                    width: 50.0,
                    height: 30.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.black,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

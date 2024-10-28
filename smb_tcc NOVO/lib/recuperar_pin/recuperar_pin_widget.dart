import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recuperar_pin_model.dart';
export 'recuperar_pin_model.dart';

class RecuperarPinWidget extends StatefulWidget {
  const RecuperarPinWidget({super.key});

  @override
  State<RecuperarPinWidget> createState() => _RecuperarPinWidgetState();
}

class _RecuperarPinWidgetState extends State<RecuperarPinWidget> {
  late RecuperarPinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecuperarPinModel());
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
        backgroundColor: Colors.white,
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
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/bdac0656-0a59-458a-9b28-0505e12c2752.png',
                                        width: 390.0,
                                        height: 809.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(0.03, -0.92),
                                    child: Text(
                                      'Recuperar PIN',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'CODEC PRO',
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('CODEC PRO'),
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.01, -0.19),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('CriarNovoPin');
                                      },
                                      text: 'OK',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(0.75, -0.96),
                                    child: Icon(
                                      Icons.lock_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 33.0,
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.05, -0.59),
                                    child: FlutterFlowRadioButton(
                                      options: [
                                        'Email\nEmail.teste@gmail.com',
                                        'Celular\n(11)93572-3859'
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 65.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                      selectedTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 15.0,
                                            letterSpacing: 1.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Open Sans'),
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor: Color(0xFF40E0D0),
                                      inactiveRadioButtonColor: Colors.white,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.8, -0.96),
                        child: FlutterFlowIconButton(
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
                            context.pushNamed('PinHIstoricodeGrav');
                          },
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.15),
                    child: Container(
                      width: 393.0,
                      height: 65.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.14),
                child: Container(
                  width: 395.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
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

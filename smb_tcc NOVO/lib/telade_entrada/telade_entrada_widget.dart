import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'telade_entrada_model.dart';
export 'telade_entrada_model.dart';

class TeladeEntradaWidget extends StatefulWidget {
  const TeladeEntradaWidget({super.key});

  @override
  State<TeladeEntradaWidget> createState() => _TeladeEntradaWidgetState();
}

class _TeladeEntradaWidgetState extends State<TeladeEntradaWidget> {
  late TeladeEntradaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeladeEntradaModel());
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/TeladeEntrada.1.png',
                              width: 437.0,
                              height: 799.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.59, 1.1),
                        child: Container(
                          width: 404.0,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.15),
                    child: Container(
                      width: 461.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

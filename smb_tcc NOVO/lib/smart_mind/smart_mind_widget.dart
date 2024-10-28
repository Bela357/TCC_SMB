import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'smart_mind_model.dart';
export 'smart_mind_model.dart';

class SmartMindWidget extends StatefulWidget {
  const SmartMindWidget({super.key});

  @override
  State<SmartMindWidget> createState() => _SmartMindWidgetState();
}

class _SmartMindWidgetState extends State<SmartMindWidget> {
  late SmartMindModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmartMindModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));

      context.pushNamed('LOGIN');
    });
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
              Align(
                alignment: AlignmentDirectional(0.03, 0.78),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo_smartmind.png',
                    width: 152.0,
                    height: 42.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, 0.67),
                child: Text(
                  'from',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'CODEC PRO',
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('CODEC PRO'),
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.07, -0.3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo_smb.png',
                    width: 301.0,
                    height: 200.0,
                    fit: BoxFit.cover,
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

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registro_intitucion_model.dart';
export 'registro_intitucion_model.dart';

class RegistroIntitucionWidget extends StatefulWidget {
  const RegistroIntitucionWidget({super.key});

  static String routeName = 'registro_Intitucion';
  static String routePath = '/registroIntitucion';

  @override
  State<RegistroIntitucionWidget> createState() =>
      _RegistroIntitucionWidgetState();
}

class _RegistroIntitucionWidgetState extends State<RegistroIntitucionWidget> {
  late RegistroIntitucionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroIntitucionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}

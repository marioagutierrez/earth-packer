import '/backend/backend.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/componentes/publicacion/publicacion_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'learn_widget.dart' show LearnWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnModel extends FlutterFlowModel<LearnWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}

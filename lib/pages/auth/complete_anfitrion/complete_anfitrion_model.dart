import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'complete_anfitrion_widget.dart' show CompleteAnfitrionWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteAnfitrionModel extends FlutterFlowModel<CompleteAnfitrionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  // State field(s) for redsocial widget.
  FocusNode? redsocialFocusNode;
  TextEditingController? redsocialTextController;
  String? Function(BuildContext, String?)? redsocialTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

    redsocialFocusNode?.dispose();
    redsocialTextController?.dispose();
  }
}

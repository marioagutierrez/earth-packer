import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/account_aprove_alert/account_aprove_alert_widget.dart';
import '/componentes/experiencia_card/experiencia_card_widget.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DocumentReference? filtro;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for experiencia_card component.
  late ExperienciaCardModel experienciaCardModel1;
  // Models for experiencia_card dynamic component.
  late FlutterFlowDynamicModels<ExperienciaCardModel> experienciaCardModels2;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for account_aprove_alert component.
  late AccountAproveAlertModel accountAproveAlertModel;

  @override
  void initState(BuildContext context) {
    experienciaCardModel1 = createModel(context, () => ExperienciaCardModel());
    experienciaCardModels2 =
        FlutterFlowDynamicModels(() => ExperienciaCardModel());
    navbarModel = createModel(context, () => NavbarModel());
    accountAproveAlertModel =
        createModel(context, () => AccountAproveAlertModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    experienciaCardModel1.dispose();
    experienciaCardModels2.dispose();
    navbarModel.dispose();
    accountAproveAlertModel.dispose();
  }
}

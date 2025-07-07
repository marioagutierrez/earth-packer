import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'otogramientos_widget.dart' show OtogramientosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OtogramientosModel extends FlutterFlowModel<OtogramientosWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> otorgamientos = [];
  void addToOtorgamientos(DocumentReference item) => otorgamientos.add(item);
  void removeFromOtorgamientos(DocumentReference item) =>
      otorgamientos.remove(item);
  void removeAtIndexFromOtorgamientos(int index) =>
      otorgamientos.removeAt(index);
  void insertAtIndexInOtorgamientos(int index, DocumentReference item) =>
      otorgamientos.insert(index, item);
  void updateOtorgamientosAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      otorgamientos[index] = updateFn(otorgamientos[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

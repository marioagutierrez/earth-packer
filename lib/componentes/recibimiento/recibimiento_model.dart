import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'recibimiento_widget.dart' show RecibimientoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecibimientoModel extends FlutterFlowModel<RecibimientoWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> selectedTrabajos = [];
  void addToSelectedTrabajos(DocumentReference item) =>
      selectedTrabajos.add(item);
  void removeFromSelectedTrabajos(DocumentReference item) =>
      selectedTrabajos.remove(item);
  void removeAtIndexFromSelectedTrabajos(int index) =>
      selectedTrabajos.removeAt(index);
  void insertAtIndexInSelectedTrabajos(int index, DocumentReference item) =>
      selectedTrabajos.insert(index, item);
  void updateSelectedTrabajosAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedTrabajos[index] = updateFn(selectedTrabajos[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

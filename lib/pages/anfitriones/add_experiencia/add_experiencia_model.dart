import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/componentes/otogramientos/otogramientos_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'dart:ui';
import 'add_experiencia_widget.dart' show AddExperienciaWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddExperienciaModel extends FlutterFlowModel<AddExperienciaWidget> {
  ///  Local state fields for this page.

  String? imageSelected;

  List<OtorgamientosRecord> otorgamientos = [];
  void addToOtorgamientos(OtorgamientosRecord item) => otorgamientos.add(item);
  void removeFromOtorgamientos(OtorgamientosRecord item) =>
      otorgamientos.remove(item);
  void removeAtIndexFromOtorgamientos(int index) =>
      otorgamientos.removeAt(index);
  void insertAtIndexInOtorgamientos(int index, OtorgamientosRecord item) =>
      otorgamientos.insert(index, item);
  void updateOtorgamientosAtIndex(
          int index, Function(OtorgamientosRecord) updateFn) =>
      otorgamientos[index] = updateFn(otorgamientos[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  bool isDataUploading_uploadDataKig = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataKig = [];
  List<String> uploadedFileUrls_uploadDataKig = [];

  // Stores action output result for [Bottom Sheet - otogramientos] action in IconButton widget.
  List<DocumentReference>? callback;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}

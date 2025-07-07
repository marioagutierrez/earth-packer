import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UbicacionesRecord extends FirestoreRecord {
  UbicacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "coord" field.
  LatLng? _coord;
  LatLng? get coord => _coord;
  bool hasCoord() => _coord != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "mapMarker" field.
  String? _mapMarker;
  String get mapMarker => _mapMarker ?? '';
  bool hasMapMarker() => _mapMarker != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _coord = snapshotData['coord'] as LatLng?;
    _tipo = snapshotData['tipo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _mapMarker = snapshotData['mapMarker'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ubicaciones');

  static Stream<UbicacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UbicacionesRecord.fromSnapshot(s));

  static Future<UbicacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UbicacionesRecord.fromSnapshot(s));

  static UbicacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UbicacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UbicacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UbicacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UbicacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UbicacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUbicacionesRecordData({
  String? titulo,
  LatLng? coord,
  String? tipo,
  String? descripcion,
  String? imagen,
  String? mapMarker,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'coord': coord,
      'tipo': tipo,
      'descripcion': descripcion,
      'imagen': imagen,
      'mapMarker': mapMarker,
    }.withoutNulls,
  );

  return firestoreData;
}

class UbicacionesRecordDocumentEquality implements Equality<UbicacionesRecord> {
  const UbicacionesRecordDocumentEquality();

  @override
  bool equals(UbicacionesRecord? e1, UbicacionesRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.coord == e2?.coord &&
        e1?.tipo == e2?.tipo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.mapMarker == e2?.mapMarker;
  }

  @override
  int hash(UbicacionesRecord? e) => const ListEquality().hash(
      [e?.titulo, e?.coord, e?.tipo, e?.descripcion, e?.imagen, e?.mapMarker]);

  @override
  bool isValidKey(Object? o) => o is UbicacionesRecord;
}

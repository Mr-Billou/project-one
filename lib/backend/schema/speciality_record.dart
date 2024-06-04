import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SpecialityRecord extends FirestoreRecord {
  SpecialityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "YearRef" field.
  String? _yearRef;
  String get yearRef => _yearRef ?? '';
  bool hasYearRef() => _yearRef != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _yearRef = snapshotData['YearRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Speciality');

  static Stream<SpecialityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialityRecord.fromSnapshot(s));

  static Future<SpecialityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecialityRecord.fromSnapshot(s));

  static SpecialityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialityRecordData({
  String? output,
  String? yearRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'YearRef': yearRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialityRecordDocumentEquality implements Equality<SpecialityRecord> {
  const SpecialityRecordDocumentEquality();

  @override
  bool equals(SpecialityRecord? e1, SpecialityRecord? e2) {
    return e1?.output == e2?.output && e1?.yearRef == e2?.yearRef;
  }

  @override
  int hash(SpecialityRecord? e) =>
      const ListEquality().hash([e?.output, e?.yearRef]);

  @override
  bool isValidKey(Object? o) => o is SpecialityRecord;
}

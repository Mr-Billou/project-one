import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class YearRecord extends FirestoreRecord {
  YearRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Year');

  static Stream<YearRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => YearRecord.fromSnapshot(s));

  static Future<YearRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => YearRecord.fromSnapshot(s));

  static YearRecord fromSnapshot(DocumentSnapshot snapshot) => YearRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static YearRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      YearRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'YearRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is YearRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createYearRecordData({
  String? output,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
    }.withoutNulls,
  );

  return firestoreData;
}

class YearRecordDocumentEquality implements Equality<YearRecord> {
  const YearRecordDocumentEquality();

  @override
  bool equals(YearRecord? e1, YearRecord? e2) {
    return e1?.output == e2?.output;
  }

  @override
  int hash(YearRecord? e) => const ListEquality().hash([e?.output]);

  @override
  bool isValidKey(Object? o) => o is YearRecord;
}

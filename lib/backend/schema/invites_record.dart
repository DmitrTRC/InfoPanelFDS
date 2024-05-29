import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvitesRecord extends FirestoreRecord {
  InvitesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "sentBy" field.
  DocumentReference? _sentBy;
  DocumentReference? get sentBy => _sentBy;
  bool hasSentBy() => _sentBy != null;

  // "sentTime" field.
  DateTime? _sentTime;
  DateTime? get sentTime => _sentTime;
  bool hasSentTime() => _sentTime != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "sentTo" field.
  DocumentReference? _sentTo;
  DocumentReference? get sentTo => _sentTo;
  bool hasSentTo() => _sentTo != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _sentBy = snapshotData['sentBy'] as DocumentReference?;
    _sentTime = snapshotData['sentTime'] as DateTime?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _sentTo = snapshotData['sentTo'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invites');

  static Stream<InvitesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvitesRecord.fromSnapshot(s));

  static Future<InvitesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvitesRecord.fromSnapshot(s));

  static InvitesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvitesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvitesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvitesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvitesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvitesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvitesRecordData({
  String? name,
  DocumentReference? sentBy,
  DateTime? sentTime,
  DocumentReference? companyRef,
  String? status,
  DocumentReference? sentTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'sentBy': sentBy,
      'sentTime': sentTime,
      'companyRef': companyRef,
      'status': status,
      'sentTo': sentTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvitesRecordDocumentEquality implements Equality<InvitesRecord> {
  const InvitesRecordDocumentEquality();

  @override
  bool equals(InvitesRecord? e1, InvitesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.sentBy == e2?.sentBy &&
        e1?.sentTime == e2?.sentTime &&
        e1?.companyRef == e2?.companyRef &&
        e1?.status == e2?.status &&
        e1?.sentTo == e2?.sentTo;
  }

  @override
  int hash(InvitesRecord? e) => const ListEquality().hash(
      [e?.name, e?.sentBy, e?.sentTime, e?.companyRef, e?.status, e?.sentTo]);

  @override
  bool isValidKey(Object? o) => o is InvitesRecord;
}

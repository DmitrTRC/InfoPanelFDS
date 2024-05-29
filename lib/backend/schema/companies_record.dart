import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaniesRecord extends FirestoreRecord {
  CompaniesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "lastEdited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "admins" field.
  List<DocumentReference>? _admins;
  List<DocumentReference> get admins => _admins ?? const [];
  bool hasAdmins() => _admins != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _website = snapshotData['website'] as String?;
    _logo = snapshotData['logo'] as String?;
    _users = getDataList(snapshotData['users']);
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _lastEdited = snapshotData['lastEdited'] as DateTime?;
    _admins = getDataList(snapshotData['admins']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompaniesRecord.fromSnapshot(s));

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompaniesRecord.fromSnapshot(s));

  static CompaniesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompaniesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompaniesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompaniesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompaniesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompaniesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompaniesRecordData({
  String? name,
  String? description,
  String? website,
  String? logo,
  DateTime? createdTime,
  DateTime? lastEdited,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'website': website,
      'logo': logo,
      'createdTime': createdTime,
      'lastEdited': lastEdited,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompaniesRecordDocumentEquality implements Equality<CompaniesRecord> {
  const CompaniesRecordDocumentEquality();

  @override
  bool equals(CompaniesRecord? e1, CompaniesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.website == e2?.website &&
        e1?.logo == e2?.logo &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.createdTime == e2?.createdTime &&
        e1?.lastEdited == e2?.lastEdited &&
        listEquality.equals(e1?.admins, e2?.admins);
  }

  @override
  int hash(CompaniesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.website,
        e?.logo,
        e?.users,
        e?.createdTime,
        e?.lastEdited,
        e?.admins
      ]);

  @override
  bool isValidKey(Object? o) => o is CompaniesRecord;
}

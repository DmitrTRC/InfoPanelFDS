import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityRecord extends FirestoreRecord {
  ActivityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "usersNotified" field.
  List<DocumentReference>? _usersNotified;
  List<DocumentReference> get usersNotified => _usersNotified ?? const [];
  bool hasUsersNotified() => _usersNotified != null;

  // "lastModified" field.
  DateTime? _lastModified;
  DateTime? get lastModified => _lastModified;
  bool hasLastModified() => _lastModified != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "actionType" field.
  String? _actionType;
  String get actionType => _actionType ?? '';
  bool hasActionType() => _actionType != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "activityRef" field.
  DocumentReference? _activityRef;
  DocumentReference? get activityRef => _activityRef;
  bool hasActivityRef() => _activityRef != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as String?;
    _usersNotified = getDataList(snapshotData['usersNotified']);
    _lastModified = snapshotData['lastModified'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _actionType = snapshotData['actionType'] as String?;
    _index = castToType<int>(snapshotData['index']);
    _activityRef = snapshotData['activityRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activity');

  static Stream<ActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityRecord.fromSnapshot(s));

  static Future<ActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityRecord.fromSnapshot(s));

  static ActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityRecordData({
  DocumentReference? owner,
  DateTime? dueDate,
  DateTime? dateCreated,
  String? name,
  String? description,
  String? status,
  DateTime? lastModified,
  String? type,
  String? actionType,
  int? index,
  DocumentReference? activityRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'dueDate': dueDate,
      'dateCreated': dateCreated,
      'name': name,
      'description': description,
      'status': status,
      'lastModified': lastModified,
      'type': type,
      'actionType': actionType,
      'index': index,
      'activityRef': activityRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityRecordDocumentEquality implements Equality<ActivityRecord> {
  const ActivityRecordDocumentEquality();

  @override
  bool equals(ActivityRecord? e1, ActivityRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.dueDate == e2?.dueDate &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.usersNotified, e2?.usersNotified) &&
        e1?.lastModified == e2?.lastModified &&
        e1?.type == e2?.type &&
        e1?.actionType == e2?.actionType &&
        e1?.index == e2?.index &&
        e1?.activityRef == e2?.activityRef;
  }

  @override
  int hash(ActivityRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.dueDate,
        e?.dateCreated,
        e?.name,
        e?.description,
        e?.status,
        e?.usersNotified,
        e?.lastModified,
        e?.type,
        e?.actionType,
        e?.index,
        e?.activityRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityRecord;
}

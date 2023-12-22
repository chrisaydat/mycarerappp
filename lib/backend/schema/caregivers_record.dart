import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CaregiversRecord extends FirestoreRecord {
  CaregiversRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  // "certifications" field.
  String? _certifications;
  String get certifications => _certifications ?? '';
  bool hasCertifications() => _certifications != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  bool hasRatings() => _ratings != null;

  // "availability" field.
  List<String>? _availability;
  List<String> get availability => _availability ?? const [];
  bool hasAvailability() => _availability != null;

  // "photoURL" field.
  String? _photoURL;
  String get photoURL => _photoURL ?? '';
  bool hasPhotoURL() => _photoURL != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _specialization = snapshotData['specialization'] as String?;
    _certifications = snapshotData['certifications'] as String?;
    _bio = snapshotData['bio'] as String?;
    _ratings = castToType<double>(snapshotData['ratings']);
    _availability = getDataList(snapshotData['availability']);
    _photoURL = snapshotData['photoURL'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Caregivers');

  static Stream<CaregiversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CaregiversRecord.fromSnapshot(s));

  static Future<CaregiversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CaregiversRecord.fromSnapshot(s));

  static CaregiversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CaregiversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CaregiversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CaregiversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CaregiversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CaregiversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCaregiversRecordData({
  String? name,
  String? specialization,
  String? certifications,
  String? bio,
  double? ratings,
  String? photoURL,
  LatLng? location,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'specialization': specialization,
      'certifications': certifications,
      'bio': bio,
      'ratings': ratings,
      'photoURL': photoURL,
      'location': location,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class CaregiversRecordDocumentEquality implements Equality<CaregiversRecord> {
  const CaregiversRecordDocumentEquality();

  @override
  bool equals(CaregiversRecord? e1, CaregiversRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.specialization == e2?.specialization &&
        e1?.certifications == e2?.certifications &&
        e1?.bio == e2?.bio &&
        e1?.ratings == e2?.ratings &&
        listEquality.equals(e1?.availability, e2?.availability) &&
        e1?.photoURL == e2?.photoURL &&
        e1?.location == e2?.location &&
        e1?.email == e2?.email;
  }

  @override
  int hash(CaregiversRecord? e) => const ListEquality().hash([
        e?.name,
        e?.specialization,
        e?.certifications,
        e?.bio,
        e?.ratings,
        e?.availability,
        e?.photoURL,
        e?.location,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is CaregiversRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "caregiver" field.
  DocumentReference? _caregiver;
  DocumentReference? get caregiver => _caregiver;
  bool hasCaregiver() => _caregiver != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "hours_worked" field.
  double? _hoursWorked;
  double get hoursWorked => _hoursWorked ?? 0.0;
  bool hasHoursWorked() => _hoursWorked != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "booked_by" field.
  DocumentReference? _bookedBy;
  DocumentReference? get bookedBy => _bookedBy;
  bool hasBookedBy() => _bookedBy != null;

  // "caregivername" field.
  String? _caregivername;
  String get caregivername => _caregivername ?? '';
  bool hasCaregivername() => _caregivername != null;

  // "clientsname" field.
  String? _clientsname;
  String get clientsname => _clientsname ?? '';
  bool hasClientsname() => _clientsname != null;

  // "caregiversimage" field.
  String? _caregiversimage;
  String get caregiversimage => _caregiversimage ?? '';
  bool hasCaregiversimage() => _caregiversimage != null;

  // "caregiversspecialty" field.
  String? _caregiversspecialty;
  String get caregiversspecialty => _caregiversspecialty ?? '';
  bool hasCaregiversspecialty() => _caregiversspecialty != null;

  // "caregiversrating" field.
  double? _caregiversrating;
  double get caregiversrating => _caregiversrating ?? 0.0;
  bool hasCaregiversrating() => _caregiversrating != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "meetinglink" field.
  String? _meetinglink;
  String get meetinglink => _meetinglink ?? '';
  bool hasMeetinglink() => _meetinglink != null;

  // "clientsemail" field.
  String? _clientsemail;
  String get clientsemail => _clientsemail ?? '';
  bool hasClientsemail() => _clientsemail != null;

  // "bookingdate" field.
  DateTime? _bookingdate;
  DateTime? get bookingdate => _bookingdate;
  bool hasBookingdate() => _bookingdate != null;

  // "bookingtime" field.
  String? _bookingtime;
  String get bookingtime => _bookingtime ?? '';
  bool hasBookingtime() => _bookingtime != null;

  void _initializeFields() {
    _client = snapshotData['client'] as DocumentReference?;
    _caregiver = snapshotData['caregiver'] as DocumentReference?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _date = snapshotData['date'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _notes = snapshotData['notes'] as String?;
    _status = snapshotData['status'] as String?;
    _hoursWorked = castToType<double>(snapshotData['hours_worked']);
    _rate = castToType<double>(snapshotData['rate']);
    _bookedBy = snapshotData['booked_by'] as DocumentReference?;
    _caregivername = snapshotData['caregivername'] as String?;
    _clientsname = snapshotData['clientsname'] as String?;
    _caregiversimage = snapshotData['caregiversimage'] as String?;
    _caregiversspecialty = snapshotData['caregiversspecialty'] as String?;
    _caregiversrating = castToType<double>(snapshotData['caregiversrating']);
    _orderDate = snapshotData['order_date'] as DateTime?;
    _orderId = snapshotData['order_id'] as String?;
    _meetinglink = snapshotData['meetinglink'] as String?;
    _clientsemail = snapshotData['clientsemail'] as String?;
    _bookingdate = snapshotData['bookingdate'] as DateTime?;
    _bookingtime = snapshotData['bookingtime'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? client,
  DocumentReference? caregiver,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? date,
  LatLng? location,
  String? notes,
  String? status,
  double? hoursWorked,
  double? rate,
  DocumentReference? bookedBy,
  String? caregivername,
  String? clientsname,
  String? caregiversimage,
  String? caregiversspecialty,
  double? caregiversrating,
  DateTime? orderDate,
  String? orderId,
  String? meetinglink,
  String? clientsemail,
  DateTime? bookingdate,
  String? bookingtime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'client': client,
      'caregiver': caregiver,
      'start_time': startTime,
      'end_time': endTime,
      'date': date,
      'location': location,
      'notes': notes,
      'status': status,
      'hours_worked': hoursWorked,
      'rate': rate,
      'booked_by': bookedBy,
      'caregivername': caregivername,
      'clientsname': clientsname,
      'caregiversimage': caregiversimage,
      'caregiversspecialty': caregiversspecialty,
      'caregiversrating': caregiversrating,
      'order_date': orderDate,
      'order_id': orderId,
      'meetinglink': meetinglink,
      'clientsemail': clientsemail,
      'bookingdate': bookingdate,
      'bookingtime': bookingtime,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.client == e2?.client &&
        e1?.caregiver == e2?.caregiver &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.date == e2?.date &&
        e1?.location == e2?.location &&
        e1?.notes == e2?.notes &&
        e1?.status == e2?.status &&
        e1?.hoursWorked == e2?.hoursWorked &&
        e1?.rate == e2?.rate &&
        e1?.bookedBy == e2?.bookedBy &&
        e1?.caregivername == e2?.caregivername &&
        e1?.clientsname == e2?.clientsname &&
        e1?.caregiversimage == e2?.caregiversimage &&
        e1?.caregiversspecialty == e2?.caregiversspecialty &&
        e1?.caregiversrating == e2?.caregiversrating &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderId == e2?.orderId &&
        e1?.meetinglink == e2?.meetinglink &&
        e1?.clientsemail == e2?.clientsemail &&
        e1?.bookingdate == e2?.bookingdate &&
        e1?.bookingtime == e2?.bookingtime;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.client,
        e?.caregiver,
        e?.startTime,
        e?.endTime,
        e?.date,
        e?.location,
        e?.notes,
        e?.status,
        e?.hoursWorked,
        e?.rate,
        e?.bookedBy,
        e?.caregivername,
        e?.clientsname,
        e?.caregiversimage,
        e?.caregiversspecialty,
        e?.caregiversrating,
        e?.orderDate,
        e?.orderId,
        e?.meetinglink,
        e?.clientsemail,
        e?.bookingdate,
        e?.bookingtime
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}

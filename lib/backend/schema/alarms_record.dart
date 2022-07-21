import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alarms_record.g.dart';

abstract class AlarmsRecord
    implements Built<AlarmsRecord, AlarmsRecordBuilder> {
  static Serializer<AlarmsRecord> get serializer => _$alarmsRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get start;

  @nullable
  String get end;

  @nullable
  String get day;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'user_ref')
  String get userRef;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AlarmsRecordBuilder builder) => builder
    ..name = ''
    ..start = ''
    ..end = ''
    ..day = ''
    ..description = ''
    ..userRef = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alarms');

  static Stream<AlarmsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AlarmsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AlarmsRecord._();
  factory AlarmsRecord([void Function(AlarmsRecordBuilder) updates]) =
      _$AlarmsRecord;

  static AlarmsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAlarmsRecordData({
  String name,
  String start,
  String end,
  String day,
  String description,
  String userRef,
}) =>
    serializers.toFirestore(
        AlarmsRecord.serializer,
        AlarmsRecord((a) => a
          ..name = name
          ..start = start
          ..end = end
          ..day = day
          ..description = description
          ..userRef = userRef));

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarms_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlarmsRecord> _$alarmsRecordSerializer =
    new _$AlarmsRecordSerializer();

class _$AlarmsRecordSerializer implements StructuredSerializer<AlarmsRecord> {
  @override
  final Iterable<Type> types = const [AlarmsRecord, _$AlarmsRecord];
  @override
  final String wireName = 'AlarmsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AlarmsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AlarmsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlarmsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AlarmsRecord extends AlarmsRecord {
  @override
  final String name;
  @override
  final String start;
  @override
  final String end;
  @override
  final String day;
  @override
  final String description;
  @override
  final String userRef;
  @override
  final DocumentReference<Object> reference;

  factory _$AlarmsRecord([void Function(AlarmsRecordBuilder) updates]) =>
      (new AlarmsRecordBuilder()..update(updates)).build();

  _$AlarmsRecord._(
      {this.name,
      this.start,
      this.end,
      this.day,
      this.description,
      this.userRef,
      this.reference})
      : super._();

  @override
  AlarmsRecord rebuild(void Function(AlarmsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmsRecordBuilder toBuilder() => new AlarmsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmsRecord &&
        name == other.name &&
        start == other.start &&
        end == other.end &&
        day == other.day &&
        description == other.description &&
        userRef == other.userRef &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), start.hashCode),
                        end.hashCode),
                    day.hashCode),
                description.hashCode),
            userRef.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlarmsRecord')
          ..add('name', name)
          ..add('start', start)
          ..add('end', end)
          ..add('day', day)
          ..add('description', description)
          ..add('userRef', userRef)
          ..add('reference', reference))
        .toString();
  }
}

class AlarmsRecordBuilder
    implements Builder<AlarmsRecord, AlarmsRecordBuilder> {
  _$AlarmsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _start;
  String get start => _$this._start;
  set start(String start) => _$this._start = start;

  String _end;
  String get end => _$this._end;
  set end(String end) => _$this._end = end;

  String _day;
  String get day => _$this._day;
  set day(String day) => _$this._day = day;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _userRef;
  String get userRef => _$this._userRef;
  set userRef(String userRef) => _$this._userRef = userRef;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AlarmsRecordBuilder() {
    AlarmsRecord._initializeBuilder(this);
  }

  AlarmsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _start = $v.start;
      _end = $v.end;
      _day = $v.day;
      _description = $v.description;
      _userRef = $v.userRef;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlarmsRecord;
  }

  @override
  void update(void Function(AlarmsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlarmsRecord build() {
    final _$result = _$v ??
        new _$AlarmsRecord._(
            name: name,
            start: start,
            end: end,
            day: day,
            description: description,
            userRef: userRef,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

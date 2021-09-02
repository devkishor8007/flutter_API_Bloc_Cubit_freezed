// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unknown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Unknown _$UnknownFromJson(Map<String, dynamic> json) {
  return _Unknown.fromJson(json);
}

/// @nodoc
class _$UnknownTearOff {
  const _$UnknownTearOff();

  _Unknown call(
      {required int id,
      required String name,
      required int year,
      required String color}) {
    return _Unknown(
      id: id,
      name: name,
      year: year,
      color: color,
    );
  }

  Unknown fromJson(Map<String, Object> json) {
    return Unknown.fromJson(json);
  }
}

/// @nodoc
const $Unknown = _$UnknownTearOff();

/// @nodoc
mixin _$Unknown {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnknownCopyWith<Unknown> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
  $Res call({int id, String name, int year, String color});
}

/// @nodoc
class _$UnknownCopyWithImpl<$Res> implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(this._value, this._then);

  final Unknown _value;
  // ignore: unused_field
  final $Res Function(Unknown) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> implements $UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int year, String color});
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$UnknownCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
    Object? color = freezed,
  }) {
    return _then(_Unknown(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Unknown implements _Unknown {
  const _$_Unknown(
      {required this.id,
      required this.name,
      required this.year,
      required this.color});

  factory _$_Unknown.fromJson(Map<String, dynamic> json) =>
      _$_$_UnknownFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int year;
  @override
  final String color;

  @override
  String toString() {
    return 'Unknown(id: $id, name: $name, year: $year, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unknown &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$UnknownCopyWith<_Unknown> get copyWith =>
      __$UnknownCopyWithImpl<_Unknown>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnknownToJson(this);
  }
}

abstract class _Unknown implements Unknown {
  const factory _Unknown(
      {required int id,
      required String name,
      required int year,
      required String color}) = _$_Unknown;

  factory _Unknown.fromJson(Map<String, dynamic> json) = _$_Unknown.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get year => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnknownCopyWith<_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

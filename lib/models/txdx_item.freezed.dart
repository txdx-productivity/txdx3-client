// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txdx_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxDxItem {
  String get uuid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get dueOn => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxDxItemCopyWith<TxDxItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxDxItemCopyWith<$Res> {
  factory $TxDxItemCopyWith(TxDxItem value, $Res Function(TxDxItem) then) =
      _$TxDxItemCopyWithImpl<$Res, TxDxItem>;
  @useResult
  $Res call(
      {String uuid,
      String? title,
      String? description,
      DateTime? dueOn,
      DateTime? completedAt});
}

/// @nodoc
class _$TxDxItemCopyWithImpl<$Res, $Val extends TxDxItem>
    implements $TxDxItemCopyWith<$Res> {
  _$TxDxItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueOn = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueOn: freezed == dueOn
          ? _value.dueOn
          : dueOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxDxItemImplCopyWith<$Res>
    implements $TxDxItemCopyWith<$Res> {
  factory _$$TxDxItemImplCopyWith(
          _$TxDxItemImpl value, $Res Function(_$TxDxItemImpl) then) =
      __$$TxDxItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String? title,
      String? description,
      DateTime? dueOn,
      DateTime? completedAt});
}

/// @nodoc
class __$$TxDxItemImplCopyWithImpl<$Res>
    extends _$TxDxItemCopyWithImpl<$Res, _$TxDxItemImpl>
    implements _$$TxDxItemImplCopyWith<$Res> {
  __$$TxDxItemImplCopyWithImpl(
      _$TxDxItemImpl _value, $Res Function(_$TxDxItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueOn = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$TxDxItemImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueOn: freezed == dueOn
          ? _value.dueOn
          : dueOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$TxDxItemImpl extends _TxDxItem {
  const _$TxDxItemImpl(
      {required this.uuid,
      this.title,
      this.description,
      this.dueOn,
      this.completedAt})
      : super._();

  @override
  final String uuid;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? dueOn;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'TxDxItem(uuid: $uuid, title: $title, description: $description, dueOn: $dueOn, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxDxItemImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueOn, dueOn) || other.dueOn == dueOn) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, title, description, dueOn, completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxDxItemImplCopyWith<_$TxDxItemImpl> get copyWith =>
      __$$TxDxItemImplCopyWithImpl<_$TxDxItemImpl>(this, _$identity);
}

abstract class _TxDxItem extends TxDxItem {
  const factory _TxDxItem(
      {required final String uuid,
      final String? title,
      final String? description,
      final DateTime? dueOn,
      final DateTime? completedAt}) = _$TxDxItemImpl;
  const _TxDxItem._() : super._();

  @override
  String get uuid;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get dueOn;
  @override
  DateTime? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$TxDxItemImplCopyWith<_$TxDxItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

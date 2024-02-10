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

  @JsonKey(ignore: true)
  $TxDxItemCopyWith<TxDxItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxDxItemCopyWith<$Res> {
  factory $TxDxItemCopyWith(TxDxItem value, $Res Function(TxDxItem) then) =
      _$TxDxItemCopyWithImpl<$Res, TxDxItem>;
  @useResult
  $Res call({String uuid, String? title});
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
  $Res call({String uuid, String? title});
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
    ));
  }
}

/// @nodoc

class _$TxDxItemImpl implements _TxDxItem {
  const _$TxDxItemImpl({required this.uuid, this.title});

  @override
  final String uuid;
  @override
  final String? title;

  @override
  String toString() {
    return 'TxDxItem(uuid: $uuid, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxDxItemImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxDxItemImplCopyWith<_$TxDxItemImpl> get copyWith =>
      __$$TxDxItemImplCopyWithImpl<_$TxDxItemImpl>(this, _$identity);
}

abstract class _TxDxItem implements TxDxItem {
  const factory _TxDxItem({required final String uuid, final String? title}) =
      _$TxDxItemImpl;

  @override
  String get uuid;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$TxDxItemImplCopyWith<_$TxDxItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

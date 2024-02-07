// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txdx_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxDxState {
  List<TxDxItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxDxStateCopyWith<TxDxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxDxStateCopyWith<$Res> {
  factory $TxDxStateCopyWith(TxDxState value, $Res Function(TxDxState) then) =
      _$TxDxStateCopyWithImpl<$Res, TxDxState>;
  @useResult
  $Res call({List<TxDxItem> items});
}

/// @nodoc
class _$TxDxStateCopyWithImpl<$Res, $Val extends TxDxState>
    implements $TxDxStateCopyWith<$Res> {
  _$TxDxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TxDxItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxDxStateImplCopyWith<$Res>
    implements $TxDxStateCopyWith<$Res> {
  factory _$$TxDxStateImplCopyWith(
          _$TxDxStateImpl value, $Res Function(_$TxDxStateImpl) then) =
      __$$TxDxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TxDxItem> items});
}

/// @nodoc
class __$$TxDxStateImplCopyWithImpl<$Res>
    extends _$TxDxStateCopyWithImpl<$Res, _$TxDxStateImpl>
    implements _$$TxDxStateImplCopyWith<$Res> {
  __$$TxDxStateImplCopyWithImpl(
      _$TxDxStateImpl _value, $Res Function(_$TxDxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$TxDxStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TxDxItem>,
    ));
  }
}

/// @nodoc

class _$TxDxStateImpl implements _TxDxState {
  const _$TxDxStateImpl({final List<TxDxItem> items = const []})
      : _items = items;

  final List<TxDxItem> _items;
  @override
  @JsonKey()
  List<TxDxItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TxDxState(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxDxStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxDxStateImplCopyWith<_$TxDxStateImpl> get copyWith =>
      __$$TxDxStateImplCopyWithImpl<_$TxDxStateImpl>(this, _$identity);
}

abstract class _TxDxState implements TxDxState {
  const factory _TxDxState({final List<TxDxItem> items}) = _$TxDxStateImpl;

  @override
  List<TxDxItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$TxDxStateImplCopyWith<_$TxDxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

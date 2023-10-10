// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ErrorStatusData {
  bool get isApi => throw _privateConstructorUsedError;
  bool get isNetwork => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorStatusDataCopyWith<ErrorStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStatusDataCopyWith<$Res> {
  factory $ErrorStatusDataCopyWith(
          ErrorStatusData value, $Res Function(ErrorStatusData) then) =
      _$ErrorStatusDataCopyWithImpl<$Res, ErrorStatusData>;
  @useResult
  $Res call({bool isApi, bool isNetwork});
}

/// @nodoc
class _$ErrorStatusDataCopyWithImpl<$Res, $Val extends ErrorStatusData>
    implements $ErrorStatusDataCopyWith<$Res> {
  _$ErrorStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApi = null,
    Object? isNetwork = null,
  }) {
    return _then(_value.copyWith(
      isApi: null == isApi
          ? _value.isApi
          : isApi // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetwork: null == isNetwork
          ? _value.isNetwork
          : isNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorStatusDataImplCopyWith<$Res>
    implements $ErrorStatusDataCopyWith<$Res> {
  factory _$$ErrorStatusDataImplCopyWith(_$ErrorStatusDataImpl value,
          $Res Function(_$ErrorStatusDataImpl) then) =
      __$$ErrorStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isApi, bool isNetwork});
}

/// @nodoc
class __$$ErrorStatusDataImplCopyWithImpl<$Res>
    extends _$ErrorStatusDataCopyWithImpl<$Res, _$ErrorStatusDataImpl>
    implements _$$ErrorStatusDataImplCopyWith<$Res> {
  __$$ErrorStatusDataImplCopyWithImpl(
      _$ErrorStatusDataImpl _value, $Res Function(_$ErrorStatusDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApi = null,
    Object? isNetwork = null,
  }) {
    return _then(_$ErrorStatusDataImpl(
      isApi: null == isApi
          ? _value.isApi
          : isApi // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetwork: null == isNetwork
          ? _value.isNetwork
          : isNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorStatusDataImpl extends _ErrorStatusData {
  const _$ErrorStatusDataImpl({required this.isApi, required this.isNetwork})
      : super._();

  @override
  final bool isApi;
  @override
  final bool isNetwork;

  @override
  String toString() {
    return 'ErrorStatusData(isApi: $isApi, isNetwork: $isNetwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStatusDataImpl &&
            (identical(other.isApi, isApi) || other.isApi == isApi) &&
            (identical(other.isNetwork, isNetwork) ||
                other.isNetwork == isNetwork));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isApi, isNetwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStatusDataImplCopyWith<_$ErrorStatusDataImpl> get copyWith =>
      __$$ErrorStatusDataImplCopyWithImpl<_$ErrorStatusDataImpl>(
          this, _$identity);
}

abstract class _ErrorStatusData extends ErrorStatusData {
  const factory _ErrorStatusData(
      {required final bool isApi,
      required final bool isNetwork}) = _$ErrorStatusDataImpl;
  const _ErrorStatusData._() : super._();

  @override
  bool get isApi;
  @override
  bool get isNetwork;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStatusDataImplCopyWith<_$ErrorStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

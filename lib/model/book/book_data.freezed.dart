// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookData _$BookDataFromJson(Map<String, dynamic> json) {
  return _BookData.fromJson(json);
}

/// @nodoc
mixin _$BookData {
  String get title => throw _privateConstructorUsedError;
  int get itemId => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  bool? get isReport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDataCopyWith<BookData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDataCopyWith<$Res> {
  factory $BookDataCopyWith(BookData value, $Res Function(BookData) then) =
      _$BookDataCopyWithImpl<$Res, BookData>;
  @useResult
  $Res call(
      {String title,
      int itemId,
      String author,
      String imageUrl,
      bool? isReport});
}

/// @nodoc
class _$BookDataCopyWithImpl<$Res, $Val extends BookData>
    implements $BookDataCopyWith<$Res> {
  _$BookDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? itemId = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? isReport = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isReport: freezed == isReport
          ? _value.isReport
          : isReport // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDataImplCopyWith<$Res>
    implements $BookDataCopyWith<$Res> {
  factory _$$BookDataImplCopyWith(
          _$BookDataImpl value, $Res Function(_$BookDataImpl) then) =
      __$$BookDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int itemId,
      String author,
      String imageUrl,
      bool? isReport});
}

/// @nodoc
class __$$BookDataImplCopyWithImpl<$Res>
    extends _$BookDataCopyWithImpl<$Res, _$BookDataImpl>
    implements _$$BookDataImplCopyWith<$Res> {
  __$$BookDataImplCopyWithImpl(
      _$BookDataImpl _value, $Res Function(_$BookDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? itemId = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? isReport = freezed,
  }) {
    return _then(_$BookDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isReport: freezed == isReport
          ? _value.isReport
          : isReport // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDataImpl implements _BookData {
  const _$BookDataImpl(
      {required this.title,
      required this.itemId,
      required this.author,
      required this.imageUrl,
      this.isReport});

  factory _$BookDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDataImplFromJson(json);

  @override
  final String title;
  @override
  final int itemId;
  @override
  final String author;
  @override
  final String imageUrl;
  @override
  final bool? isReport;

  @override
  String toString() {
    return 'BookData(title: $title, itemId: $itemId, author: $author, imageUrl: $imageUrl, isReport: $isReport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isReport, isReport) ||
                other.isReport == isReport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, itemId, author, imageUrl, isReport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDataImplCopyWith<_$BookDataImpl> get copyWith =>
      __$$BookDataImplCopyWithImpl<_$BookDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDataImplToJson(
      this,
    );
  }
}

abstract class _BookData implements BookData {
  const factory _BookData(
      {required final String title,
      required final int itemId,
      required final String author,
      required final String imageUrl,
      final bool? isReport}) = _$BookDataImpl;

  factory _BookData.fromJson(Map<String, dynamic> json) =
      _$BookDataImpl.fromJson;

  @override
  String get title;
  @override
  int get itemId;
  @override
  String get author;
  @override
  String get imageUrl;
  @override
  bool? get isReport;
  @override
  @JsonKey(ignore: true)
  _$$BookDataImplCopyWith<_$BookDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookDetailData _$BookDetailDataFromJson(Map<String, dynamic> json) {
  return _BookDetailData.fromJson(json);
}

/// @nodoc
mixin _$BookDetailData {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get introduce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailDataCopyWith<BookDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailDataCopyWith<$Res> {
  factory $BookDetailDataCopyWith(
          BookDetailData value, $Res Function(BookDetailData) then) =
      _$BookDetailDataCopyWithImpl<$Res, BookDetailData>;
  @useResult
  $Res call({String title, String author, String imageUrl, String introduce});
}

/// @nodoc
class _$BookDetailDataCopyWithImpl<$Res, $Val extends BookDetailData>
    implements $BookDetailDataCopyWith<$Res> {
  _$BookDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? introduce = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDetailDataImplCopyWith<$Res>
    implements $BookDetailDataCopyWith<$Res> {
  factory _$$BookDetailDataImplCopyWith(_$BookDetailDataImpl value,
          $Res Function(_$BookDetailDataImpl) then) =
      __$$BookDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String author, String imageUrl, String introduce});
}

/// @nodoc
class __$$BookDetailDataImplCopyWithImpl<$Res>
    extends _$BookDetailDataCopyWithImpl<$Res, _$BookDetailDataImpl>
    implements _$$BookDetailDataImplCopyWith<$Res> {
  __$$BookDetailDataImplCopyWithImpl(
      _$BookDetailDataImpl _value, $Res Function(_$BookDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? introduce = null,
  }) {
    return _then(_$BookDetailDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDetailDataImpl implements _BookDetailData {
  const _$BookDetailDataImpl(
      {required this.title,
      required this.author,
      required this.imageUrl,
      required this.introduce});

  factory _$BookDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDetailDataImplFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String imageUrl;
  @override
  final String introduce;

  @override
  String toString() {
    return 'BookDetailData(title: $title, author: $author, imageUrl: $imageUrl, introduce: $introduce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDetailDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, imageUrl, introduce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDetailDataImplCopyWith<_$BookDetailDataImpl> get copyWith =>
      __$$BookDetailDataImplCopyWithImpl<_$BookDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDetailDataImplToJson(
      this,
    );
  }
}

abstract class _BookDetailData implements BookDetailData {
  const factory _BookDetailData(
      {required final String title,
      required final String author,
      required final String imageUrl,
      required final String introduce}) = _$BookDetailDataImpl;

  factory _BookDetailData.fromJson(Map<String, dynamic> json) =
      _$BookDetailDataImpl.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String get imageUrl;
  @override
  String get introduce;
  @override
  @JsonKey(ignore: true)
  _$$BookDetailDataImplCopyWith<_$BookDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

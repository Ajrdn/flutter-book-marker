// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookDataImpl _$$BookDataImplFromJson(Map<String, dynamic> json) =>
    _$BookDataImpl(
      title: json['title'] as String,
      itemId: json['itemId'] as int,
      author: json['author'] as String,
      imageUrl: json['imageUrl'] as String,
      isReport: json['isReport'] as bool?,
    );

Map<String, dynamic> _$$BookDataImplToJson(_$BookDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'itemId': instance.itemId,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'isReport': instance.isReport,
    };

_$BookDetailDataImpl _$$BookDetailDataImplFromJson(Map<String, dynamic> json) =>
    _$BookDetailDataImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      imageUrl: json['imageUrl'] as String,
      introduce: json['introduce'] as String,
    );

Map<String, dynamic> _$$BookDetailDataImplToJson(
        _$BookDetailDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'introduce': instance.introduce,
    };

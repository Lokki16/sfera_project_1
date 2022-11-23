// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterInfoModel _$CharacterInfoModelFromJson(Map json) => CharacterInfoModel(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$CharacterInfoModelToJson(CharacterInfoModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

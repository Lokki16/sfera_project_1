// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map json) => CharacterModel(
      info: CharacterInfoModel.fromJson(
          Map<String, dynamic>.from(json['info'] as Map)),
      results: (json['results'] as List<dynamic>)
          .map((e) => CharacterResultsModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

import 'package:json_annotation/json_annotation.dart';
import 'package:sfera_project_1/presentation/template/template.dart';

part 'character_model.g.dart';

@JsonSerializable(anyMap: true)
class CharacterModel {
  final CharacterInfoModel info;
  final List<CharacterResultsModel> results;

  @override
  const CharacterModel({
    required this.info,
    required this.results,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map toJson() => _$CharacterModelToJson(this);
}

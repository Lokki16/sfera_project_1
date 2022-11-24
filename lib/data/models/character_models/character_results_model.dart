import 'package:json_annotation/json_annotation.dart';

part 'character_results_model.g.dart';

@JsonSerializable(anyMap: true)
class CharacterResultsModel {
  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;

  @override
  const CharacterResultsModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });

  factory CharacterResultsModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterResultsModelFromJson(json);

  Map toJson() => _$CharacterResultsModelToJson(this);
}

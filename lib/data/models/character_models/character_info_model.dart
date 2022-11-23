import 'package:json_annotation/json_annotation.dart';

part 'character_info_model.g.dart';

@JsonSerializable(anyMap: true)
class CharacterInfoModel {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  @override
  const CharacterInfoModel({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  factory CharacterInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterInfoModelFromJson(json);

  Map toJson() => _$CharacterInfoModelToJson(this);
}

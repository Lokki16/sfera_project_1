import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sfera_project_1/presentation/template/template.dart';

class CharacterRepository {
  final url = 'http://rickandmortyapi.com/api/character';

  Future<CharacterModel> getCharacter(String name, int page) async {
    try {
      final response = await http.get(Uri.parse('$url?page=$page&name=$name'));
      return CharacterModel.fromJson(json.decode(response.body));
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

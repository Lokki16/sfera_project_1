import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sfera_project_1/presentation/template/template.dart';

class WeatherService {
  String apiKey = '';

  Future<WeatherModel> fetchCurrentWeather({
    String? query,
    String lat = '',
    String lon = '',
  }) async {
    final url = Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?q=$query&lat=$lat&lon=$lon&appid=$apiKey&units=metric');

    final response = await http.post(url);

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw Future.error('Failed to load weather');
    }
  }

  Future<List<WeatherModel>> fetchHourlyWeather({
    String? query,
    String lat = '',
    String lon = '',
  }) async {
    final url = Uri.parse(
        'http://api.openweathermap.org/data/2.5/forecast?q=$query&lat=$lat&lon=$lon&appid=$apiKey&units=metric');

    final response = await http.post(url);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<WeatherModel> data =
          (jsonData['list'] as List<dynamic>).map((item) {
        return WeatherModel.fromJson(item);
      }).toList();
      return data;
    } else {
      throw Future.error('Failed to load weather');
    }
  }
}

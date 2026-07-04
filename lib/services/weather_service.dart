import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherService {
  static const String _apiKey = '707007';

  Future<Map<String, dynamic>?> fetchWeather(String cityName) async{
    final url = 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$_apiKey&units=metric';

    try{
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200){
        return json.decode(response.body);
      }

      return null;
      
    } catch (e) {
      throw Exception('Jaringan Error: $e');
    }
  }
}
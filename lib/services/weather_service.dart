import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherService {

  static const String _apiKey = '8f5e40e2745b70c11926f8b05530aa30'; 

  Future<Map<String, dynamic>?> fetchWeather(String cityName) async{
    final url = 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$_apiKey&units=metric';

    try {
      final response = await http.get(Uri.parse(url));
      
      print('Status Code: ${response.statusCode}'); 
      print('Response Body: ${response.body}');

      if (response.statusCode == 200){
        return json.decode(response.body);
      }

      return null;
      
    } catch (e) {
      throw Exception('Jaringan Error: $e');
    }
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {

  final String apiKey =
      "fad6e3871a44f53422bbb32b13446419";

  Future<Map<String, dynamic>> getWeather(
      String city) async {

    final url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric";

    final response =
        await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      return jsonDecode(response.body);

    } else {

      throw Exception(
          "Gagal mengambil data cuaca");
    }
  }
}
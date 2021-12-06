import 'package:dio/dio.dart';

class WeatherApiClient {
  static const API_KEY = "2b67ac9e1435c32b809857a595861a64";
  final Dio dio;
  WeatherApiClient(this.dio) {
    dio.options.baseUrl = "https://api.openweathermap.org/data/2.5/onecall?appid=$API_KEY&";
  }
}

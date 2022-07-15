import 'package:flutter/material.dart';

class WeatherLocation {
  final String? city;
  final String? dateTime;
  final String? temparature;
  final String? weatherType;
  final String? iconUrl;
  final int? wind;
  final int? rain;
  final int? humidity;

  WeatherLocation({
    @required this.city,
    @required this.dateTime,
    @required this.temparature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Amman',
    dateTime: '07:50 PM — Monday, 9 Jul 2022',
    temparature: '24\u2103',
    weatherType: 'Night',
    iconUrl: 'assets/images/moon.png',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'London',
    dateTime: '02:20 PM — Monday, 9 Jul 2022',
    temparature: '15\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/images/cloud.png',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'New York',
    dateTime: '09:20 AM — Monday, 9 Jul 2022',
    temparature: '17\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/images/sun.png',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Sydney',
    dateTime: '01:20 AM — Tuesday, 10 Jul 2022',
    temparature: '10\u2103',
    weatherType: 'Rainy',
    iconUrl: 'assets/images/rain.png',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];

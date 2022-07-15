import 'package:balmy_weather_ui/models/weather_locations.dart';
import 'package:balmy_weather_ui/wigets/single_weather.dart';
import 'package:balmy_weather_ui/wigets/slider_dot.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  String? bgImg;
  onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[_currentPage].weatherType == 'Night') {
      bgImg = 'assets/images/night.jpg';
    } else if (locationList[_currentPage].weatherType == 'Cloudy') {
      bgImg = 'assets/images/cloudy.jpeg';
    } else if (locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = 'assets/images/cloud-in-blue-sky.jpg';
    } else {
      bgImg = 'assets/images/rainy.jpg';
    }

    String dateTime = DateFormat('yyyy-MM-dd – hh:mm').format(DateTime.now());
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                print('Menu Clicked!!!');
              },
              icon: const Icon(Icons.sort, size: 30, color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, size: 30, color: Colors.white))
          ],
        ),
        body: SizedBox(
          child: Stack(children: [
            Image.asset(
              bgImg!,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              color: Colors.black26,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .15, left: 12.0),
              child: Row(
                children: [
                  for (int i = 0; i < locationList.length; i++)
                    if (i == _currentPage) SliderDot(true) else SliderDot(false)
                ],
              ),
            ),
            PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: locationList.length,
                onPageChanged: onPageChanged,
                itemBuilder: ((context, index) => SingleWeather(index)))
          ]),
        ));
  }
}

import 'package:balmy_weather_ui/models/weather_locations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SingleWeather extends StatelessWidget {
  int index;
  SingleWeather(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateTime = DateFormat('yyyy-MM-dd – hh:mm').format(DateTime.now());
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(locationList[index].city ?? '',
                        style: GoogleFonts.lato(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                    child: Text(dateTime,
                        style: GoogleFonts.lato(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .04),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Text(locationList[index].temparature ?? '0',
                            style: GoogleFonts.lato(
                                fontSize: 50,
                                fontWeight: FontWeight.w300,
                                color: Colors.white)),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, bottom: 8.0),
                            child: Image.asset(locationList[index].iconUrl!,
                                width: 36, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 4.0),
                            child: Text(locationList[index].weatherType ?? '',
                                style: GoogleFonts.lato(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ]),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .025),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Wind',
                          style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                      child: Text(locationList[index].wind.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                      child: Text(' km/h',
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, top: 4.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.white38,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.lightGreenAccent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text('Rain',
                          style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                      child: Text(locationList[index].rain.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                      child: Text(' %',
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, top: 4.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.white38,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text('Humidity',
                          style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                      child: Text(locationList[index].humidity.toString(),
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, left: 22.0),
                      child: Text('%',
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, top: 4.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.white38,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ],
          ),
        )
      ],
    );
  }
}

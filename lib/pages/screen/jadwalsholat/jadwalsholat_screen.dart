import 'package:alquran_digital/theme.dart';
import 'package:flutter/material.dart';

class JadwalSholatScreen extends StatefulWidget {
  const JadwalSholatScreen({super.key});

  @override
  State<JadwalSholatScreen> createState() => _JadwalSholatScreenState();
}

class _JadwalSholatScreenState extends State<JadwalSholatScreen> {
  TimeOfDay timeOfDay = TimeOfDay.now();
  List waktu = ['Subuh', 'Dzuhur', 'Ashar', 'Maghrib', 'Isya'];
  List jam = ['04:28', '11:46', '15:04', '17:51', '19:05'];

  @override
  Widget build(BuildContext context) {
    String _period = timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        title: Text(
          'Jadwal Sholat',
          style: TextStyle(fontSize: 16, color: primaryTextColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${timeOfDay.hour}:${timeOfDay.minute} " + _period,
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 380,
              margin: EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    color: backgroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.gps_fixed),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Purwokerto',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: backgroundColor.withOpacity(0.4),
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subuh',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                              Text(
                                '04:28',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dzuhur',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                              Text(
                                '11:50',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ashar',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                              Text(
                                '15:04',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Maghrib',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                              Text(
                                '17:51',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Isya',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                              Text(
                                '19:05',
                                style: TextStyle(
                                    fontSize: 18, color: primaryTextColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

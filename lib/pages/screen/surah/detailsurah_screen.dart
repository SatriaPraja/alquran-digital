import 'package:alquran_digital/repository/alquran_repo.dart';
import 'package:alquran_digital/theme.dart';
import 'package:flutter/material.dart';

class DetailSurahScreen extends StatelessWidget {
  final int nomor;
  const DetailSurahScreen({super.key, required this.nomor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: FutureBuilder(
        future: AlQuranRepo().getSurahByNomor(nomor: nomor),
        builder: (context, state) {
          if (state.connectionState == ConnectionState.waiting) {
            return Center(child: const CircularProgressIndicator());
          }
          return Column(
            children: [
              SizedBox(height: 15),
              Center(
                child: Text(
                  state.data!.namaLatin,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryTextColor,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: secondTextColors,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/logo.png',
                      width: 120,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.data!.namaLatin,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Arti : ' + state.data!.arti,
                          style: TextStyle(
                            color: primaryTextColor,
                          ),
                        ),
                        Text(
                          'Tempat Turun : ' + state.data!.tempatTurun,
                          style: TextStyle(
                            color: primaryTextColor,
                          ),
                        ),
                        Text(
                          'Jumlah Ayat: ' +
                              state.data!.jumlahAyat.toString() +
                              ' Ayat',
                          style: TextStyle(
                            color: primaryTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Icon(
                        Icons.play_arrow_outlined,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:alquran_digital/model/surah_model.dart';
import 'package:alquran_digital/pages/screen/surah/detailsurah_screen.dart';
import 'package:alquran_digital/repository/alquran_repo.dart';
import 'package:alquran_digital/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurahScreen extends StatefulWidget {
  const SurahScreen({super.key});

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: backgroundColor,
        title: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Al - Quran',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryTextColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 20,
                  bottom: 10,
                ),
                padding: EdgeInsets.only(left: 33),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  onChanged: (value) {},
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Search',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder<List<SurahModel>>(
        
        future: AlQuranRepo().getAllSurah(),
        builder: (context, state) {
          if (state.connectionState == ConnectionState.waiting) {
            return Center(child: const CircularProgressIndicator());
          }
          return Container(
            child: ListView.builder(
              itemCount: state.data!.length,
              itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailSurahScreen(
                            nomor: state.data![index].nomor,
                          ),
                        ),
                      );
                    },
                    leading: Container(
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/decor.png',
                          ),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        state.data![index].nomor.toString(),
                        style: TextStyle(color: primaryTextColor),
                      )),
                    ),
                    title: Text(
                      state.data![index].namaLatin,
                      style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${state.data![index].tempatTurun.toUpperCase()} . ${state.data![index].jumlahAyat.toString()} VERSES ",
                      style: TextStyle(fontSize: 12, color: secondTextColors),
                    ),
                    trailing: Text(
                      state.data![index].nama,
                      style: TextStyle(
                        fontSize: 20,
                        color: secondTextColors,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Divider(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

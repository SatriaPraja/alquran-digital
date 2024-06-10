import 'package:alquran_digital/model/doa_model.dart';
import 'package:alquran_digital/model/surah_model.dart';
import 'package:alquran_digital/pages/screen/doa/detaildoa_screen.dart';
import 'package:alquran_digital/pages/screen/surah/detailsurah_screen.dart';
import 'package:alquran_digital/repository/alquran_repo.dart';
import 'package:alquran_digital/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoaScreen extends StatefulWidget {
  const DoaScreen({super.key});

  @override
  State<DoaScreen> createState() => _DoaScreenState();
}

class _DoaScreenState extends State<DoaScreen> {
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
                'Doa',
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
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: doaModel.length,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailDoaScreen(
                        nomor: doaModel[index].nomor,
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
                      doaModel[index].nomor.toString(),
                      style: TextStyle(color: primaryTextColor),
                    ),
                  ),
                ),
                title: Text(
                  doaModel[index].judul,
                  style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Divider(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

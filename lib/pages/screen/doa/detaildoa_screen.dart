import 'package:alquran_digital/model/doa_model.dart';
import 'package:alquran_digital/theme.dart';
import 'package:flutter/material.dart';

class DetailDoaScreen extends StatelessWidget {
  final int nomor;
  DetailDoaScreen({required this.nomor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageView.builder(
        itemCount: doaModel.length,
        itemBuilder: (context, index) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                doaModel[index = nomor - 1].judul,
                style: TextStyle(
                    fontSize: 16,
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  doaModel[index].arab,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  doaModel[index].latin,
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  'Artinya : ' + doaModel[index].arti,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

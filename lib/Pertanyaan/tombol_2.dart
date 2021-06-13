import 'package:vablik/Pertanyaan/List_Pertanyaan_2.dart';
import 'package:vablik/Pertanyaan/question_3.dart';
import 'package:flutter/material.dart';
import '../widgets/tidak_boleh_vaksin.dart';

List<String> buttonGroupValue2 = ["", "", "", "", "", "", "", "", "", ""];

List<bool> pilihan2 = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];

class tombol2 extends StatelessWidget {
  final snackBar = SnackBar(
      content: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Mohon isi semua pertanyaan terlebih dahulu",
        textAlign: TextAlign.center),
  ));
  bool boleh;
  bool jawab;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(89, 87, 138, 1),
      ),
      child: InkWell(
        onTap: () {
          boleh = false;
          jawab = true;
          List<String> gejala = [];
          for (int i = 0; i < pilihan2.length; i++) {
            if (pilihan2[i] == true) {
              boleh = true;
              print(pilihan2[i]);
              print(kendala2[i]);
              gejala.add(kendala2[i]);
            }
            if (buttonGroupValue2[i] == "") {
              jawab = false;
            }
          }
          if (jawab == true) {
            boleh
                ? tidakBolehVaksin(context, gejala)
                : Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                    return Question3();
                  }));
            print(gejala);
          }
          if (jawab == false) {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Text(
          "Selanjutnya",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

import 'package:vablik/Pertanyaan/List_Pertanyaan_3.dart';
import 'package:vablik/widgets/boleh_vaksin.dart';
import 'package:flutter/material.dart';
import '../widgets/tidak_boleh_vaksin.dart';

class tombol3 extends StatelessWidget {
  final snackBar = SnackBar(
      content: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Mohon isi semua pertanyaan terlebih dahulu",
        textAlign: TextAlign.center),
  ));
  bool boleh, jawab;

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
          for (int i = 0; i < pilihan3.length; i++) {
            if (pilihan3[i] == true) {
              boleh = true;
              gejala.add(kendala3[i]);
            }
            if (buttonGroupValue[i] == "") {
              jawab = false;
            }
          }
          if (jawab == true) {
            boleh ? tidakBolehVaksin(context, gejala) : BolehVaksin(context);
          }

          if (jawab == false) {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Text(
          "Selesai",
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

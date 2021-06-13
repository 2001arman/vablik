import 'package:vablik/widgets/penjelasanPenyakit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pertanyaan1 extends StatefulWidget {
  final String soal;

  const Pertanyaan1({
    Key key,
    this.soal,
  }) : super(key: key);

  @override
  _Pertanyaan1State createState() => _Pertanyaan1State();
}

class _Pertanyaan1State extends State<Pertanyaan1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataPertanyaan1.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 4,
                    color: Color(0xFF4056C6).withOpacity(.35),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: dataPertanyaan1[index],
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: kendala1[index],
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 87, 138, 1)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Penjelasan(context, kendala1[index],
                                        penjelasanPertanyaan1[index]);
                                  },
                              ),
                              TextSpan(
                                  text: "?",
                                  style: TextStyle(color: Colors.black))
                            ]),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Radio(
                        value: "iya",
                        groupValue: buttonGroupValue[index],
                        activeColor: Color.fromRGBO(89, 87, 138, 1),
                        onChanged: (val) {
                          buttonGroupValue[index] = val;
                          setState(() {
                            pilihan1[index] = true;
                          });
                        }),
                    Text("Ya"),
                    Spacer(),
                    Radio(
                        value: "tidak",
                        groupValue: buttonGroupValue[index],
                        activeColor: Color.fromRGBO(89, 87, 138, 1),
                        onChanged: (val) {
                          buttonGroupValue[index] = val;
                          setState(() {
                            pilihan1[index] = false;
                          });
                        }),
                    Text("Tidak"),
                    Spacer()
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          );
        });
  }
}

List<String> buttonGroupValue = ["", "", "", "", "", "", "", "", "", ""];

List<String> dataPertanyaan1 = [
  "Apakah Anda memiliki penyakit ",
  "Apakah Anda memiliki reaksi ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
];

List<String> kendala1 = [
  "Autoimun",
  "Anafilaksis",
  "Asma",
  "Rinitis Alergi",
  "Urtikaria",
  "Dermatitis Atopik",
  "HIV",
  "Penyakit Paru Obstuktif Kronik (PPOK)",
  "Inrerstitial Lung disease (ILD)",
  "Penyakit Hati",
];

List<String> penjelasanPertanyaan1 = [
  "Kondisi ketika sistem kekebalan tubuh seseorang menyerang sel-sel sehat tubuhnya sendiri.",
  "Suatu reaksi alergi yang parah dan berpotensi mengancam nyawa. Reaksi ini akan mengakibatkan penurunan tekanan darah secara drastis, sehingga aliran darah ke seluruh jaringan tubuh terganggu.",
  "Kondisi ketika saluran napas meradang, sempit, membengkak, dan menghasilkan lendir berlebih sehingga sulit bernapas.",
  "peradangan yang terjadi pada rongga hidung akibat reaksi alergi yang menyebabkan gatal, mata berair, bersin.",
  "dikenal dengan biduran, yaitu ruam kulit yang meninggi dan gatal dipicu oleh reaksi terhadap makanan, obat-obatan, atau iritasi lainnya.",
  "salah satu jenis eksim, yang terjadi akibat adanya peradangan pada kulit.",
  "virus yang merusak sistem kekebalan tubuh sehingga tubuh menjadi lemah dalam melawan infeksi.",
  "istilah yang digunakan untuk sejumlah penyakit yang menyerang paru-paru untuk jangka panjang.",
  "penyakit paru yang ditandai dengan bermacam-macam kelainan seperti peradangan maupun pembentukan jaringan parut di dalam organ paru",
  "gangguan pada hati karena kerusakan sel-sel hati yang menyebabkan organ ini fungsinya terganggu.",
];

List<bool> pilihan1 = [
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

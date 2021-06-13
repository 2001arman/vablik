import 'package:vablik/widgets/penjelasanPenyakit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pertanyaan3 extends StatefulWidget {
  final String soal;

  const Pertanyaan3({
    Key key,
    this.soal,
  }) : super(key: key);

  @override
  _Pertanyaan3State createState() => _Pertanyaan3State();
}

class _Pertanyaan3State extends State<Pertanyaan3> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataPertanyaan3.length,
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
                            text: dataPertanyaan3[index],
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: kendala3[index],
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 87, 138, 1)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Penjelasan(context, kendala3[index],
                                        penjelasanPertanyaan3[index]);
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
                            pilihan3[index] = true;
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
                            pilihan3[index] = false;
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

List<String> buttonGroupValue = ["", "", "", "", "", "", "", ""];

List<String> dataPertanyaan3 = [
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
  "Apakah Anda memiliki Penyakit ",
];

List<String> kendala3 = [
  "Gastrointestinal",
  "Diabetes Melitus Tipe 2",
  "Obesitas",
  "Hipertiroid",
  "Hipotiroid",
  "Nodul Tiroid",
  "Kanker Darah",
  "Gangguan Psikomatis",
];

List<String> penjelasanPertanyaan3 = [
  "Gangguan saluran pencernaan",
  "Kondisi kronis yang mempengaruhi cara tubuh memproses gula darah (glukosa).",
  "Kondisi kronis akibat penumpukan lemak dalam tubuh yang sangat tinggi.",
  "Produksi hormon tiroksin yang terlalu banyak.",
  "Kondisi ketika kelenjar tiroid tidak menghasilkan hormon tiroid yang cukup.",
  "Benjolan yang muncul pada kelenjar tiroid di leher.",
  "Kanker tumor padat kelainan darah seperti talasemia, imunohematologi, hemofilia, gangguan koagulasi dan kondisi lainnya",
  "Keluhan fisik yang timbul atau dipengaruhi oleh pikiran atau emosi, bukannya oleh alasan fisik yang jelas, seperti luka atau infeksi.",
];

List<bool> pilihan3 = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

import 'package:vablik/Pertanyaan/tombol_2.dart';
import 'package:vablik/widgets/penjelasanPenyakit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pertanyaan2 extends StatefulWidget {
  final String soal;

  const Pertanyaan2({
    Key key,
    this.soal,
  }) : super(key: key);

  @override
  _Pertanyaan2State createState() => _Pertanyaan2State();
}

class _Pertanyaan2State extends State<Pertanyaan2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataPertanyaan2.length,
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
                            text: dataPertanyaan2[index],
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: kendala2[index],
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 87, 138, 1)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Penjelasan(context, kendala2[index],
                                        penjelasanPertanyaan2[index]);
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
                        groupValue: buttonGroupValue2[index],
                        activeColor: Color.fromRGBO(89, 87, 138, 1),
                        onChanged: (val) {
                          buttonGroupValue2[index] = val;

                          setState(() {
                            pilihan2[index] = true;
                          });
                        }),
                    Text("Ya"),
                    Spacer(),
                    Radio(
                        value: "tidak",
                        groupValue: buttonGroupValue2[index],
                        activeColor: Color.fromRGBO(89, 87, 138, 1),
                        onChanged: (val) {
                          buttonGroupValue2[index] = val;

                          setState(() {
                            pilihan2[index] = false;
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

List<String> dataPertanyaan2 = [
  "Apakah Anda memiliki riwayat ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki riwayat ",
  "Apakah Anda memiliki riwayat ",
  "Apakah Anda memiliki riwayat ",
  "Apakah Anda memiliki riwayat ",
  "Apakah Anda memiliki ",
  "Apakah Anda memiliki Penyakit ",
];

List<String> kendala2 = [
  "Transplantasi Hati",
  "Hipertensi",
  "Penyakit Ginjal Kronik (PGK) non dialisis",
  "Penyakit Ginjal Kronik (PGK) dialisis",
  "Hemodialisis",
  "Dialisis Peritoneal",
  "Transplantasi Ginjal",
  "Gagal Jantung",
  "Penyakit Jantung Koroner",
  "Aritmia",
];

List<String> penjelasanPertanyaan2 = [
  "operasi menggantikan organ hati pasien yang mengalami penyakit liver dengan hati yang sehat.",
  "biasa disebut penyakit tekanan darah tinggi",
  "jenis penyakit ginjal yang terdapat kehilangan fungsi ginjal secara bertahap selama beberapa bulan hingga bertahun-tahun, yang belum memerlukan perawatan pendukung kehidupan seperti cuci darah atau cangkok ginjal",
  "jenis penyakit ginjal yang terdapat kehilangan fungsi ginjal secara bertahap selama beberapa bulan hingga bertahun-tahun, yang memerlukan perawatan pendukung kehidupan seperti cuci darah atau cangkok ginjal.",
  "terapi cuci darah di luar tubuh pada pengidap masalah ginjal yang ginjalnya sudah tidak berfungsi dengan optimal.",
  "metode cuci darah yang dilakukan lewat perut.",
  "prosedur bedah untuk mengganti organ ginjal yang telah mengalami kerusakan akibat gagal ginjal kronis stadium akhir.",
  "kondisi saat pompa jantung melemah, sehingga tidak mampu mengalirkan darah yang cukup ke seluruh tubuh.",
  "Kerusakan atau penyakit pada pembuluh darah utama jantung dapat terjadi akibat penyempitan sehingga membatasi aliran darah ke jantung.",
  "Gangguan detak jantung yang tidak normal, apakah tidak beraturan, terlalu cepat, atau terlalu lambat.",
];

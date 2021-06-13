import 'package:flutter/material.dart';

Future<dynamic> BolehVaksin(BuildContext context) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromRGBO(5, 100, 167, 1),
          actions: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  // margin: EdgeInsets.only(right: 30, left: 30),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/Gejala.png")),
                      color: Color.fromRGBO(5, 100, 167, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(height: 10),
                Text(
                  "Tidak ada Gejala",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 230,
                  child: Text(
                    "Anda sehat! Silahkan screenshot atau membawa bukti ini kepada petugas vaksin",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Selesai",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(89, 87, 138, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        );
      });
}

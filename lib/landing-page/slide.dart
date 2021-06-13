import 'package:vablik/landing-page/slide-list.dart';
import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  final int index;
  const Slide({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
          height: 280,
          width: 380,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(slideData[index].gambar),
            fit: BoxFit.fill,
          )),
        ),
        SizedBox(height: 10),
        Container(
          width: 310,
          child: Column(
            children: [
              Text(
                slideData[index].judul,
                style: TextStyle(
                  fontSize: slideData[index].size,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(63, 61, 82, 1),
                ),
                // textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                slideData[index].deskripsi,
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 168, 1),
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ],
    );
  }
}

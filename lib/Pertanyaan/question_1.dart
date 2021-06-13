import 'package:vablik/Pertanyaan/List_pertanyaan_1.dart';
import 'package:vablik/Pertanyaan/tombol_1.dart';
import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("General Check up", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Pertanyaan1(),
          ),
          tombol1(),
        ],
      ),
    );
  }
}

import 'package:vablik/Pertanyaan/List_pertanyaan_2.dart';
import 'package:vablik/Pertanyaan/tombol_2.dart';
import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("General Check up", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Pertanyaan2(),
          ),
          tombol2(),
        ],
      ),
    );
  }
}

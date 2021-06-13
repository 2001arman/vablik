import 'package:flutter/material.dart';

class SlideList {
  final String gambar;
  final String judul;
  final String deskripsi;
  final double size;

  SlideList({
    @required this.gambar,
    @required this.judul,
    @required this.deskripsi,
    @required this.size,
  });
}

final slideData = [
  SlideList(
    gambar: "assets/icons/LP1.png",
    judul: "VABLIK",
    size: 40,
    deskripsi:
        "Apa itu VABLIK? VABLIK adalah aplikasi Skrinning Vaksinasi COVID-19 untuk Publik bagi mereka yang berusia dibawah 50 tahun.",
  ),
  SlideList(
    gambar: "assets/icons/LP2.png",
    judul: "AYO!",
    size: 40,
    deskripsi:
        "Bantu para dokter untuk melakukan vaksinasi kepada warga setempat dengan melakukan skrinning mandiri.",
  ),
  SlideList(
    gambar: "assets/icons/LP3.png",
    judul: "SELF SCREENING",
    size: 30,
    deskripsi:
        "Melakukan pengecekan secara mandiri dan laporkan kondisi kita kepada komunitas kita.",
  ),
];

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    // membuat widget baru, yang akan memanggil home yg berisi halaman satu
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  // widget halamansatu
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        //kalau di android studio = activity
        // pada body kita akan membuat kotak, yg di dalamnya terdapat kalimat
        body: new Center(
      // untuk membuat center anaknya = container
      child: new Container(
        // kalau style = itu akan berpengaruh ke containernya, pengaturan" untuk containernya
        // sedangkan child, itu menandakan bahwa dia adalah anak dari widget diatasnya
        color: Colors.blue[900], // memberi warna biru
        width: 200,
        height: 200,
        // id kita anggap saja kotak, di dlm container ini, kita membuat sebuah text center / di tengah kan,
        // di dalam container kita memiliki sebuah widget lagi = berarti anak dari container / child
        child: new Center(
          // kenapa tidak tengah kotaknya ?, karena hanya menengahkan textnya saja
          // nah di dalam widget center ini, kita buat widget lagi, widget text, berarti widget text ini adalah anak dari widget center
          child: new Text(
            "Muhammad Yasa",
            style: new TextStyle(
                color: Colors.white, fontFamily: "Serif", fontSize: 20),
          ),
        ),
      ),
    ));
  }
}

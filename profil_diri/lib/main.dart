import 'package:flutter/material.dart';
import 'package:profil_diri/page2.dart';
import 'page2.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(), //Halaman awal ketika program pertama dijalankan
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context)
          .size
          .width, //Lebar diatur seuai dengan lebar layar
      height: MediaQuery.of(context)
          .size
          .height, //Lebar diatur seuai dengan lebar layar
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context)
                .size
                .shortestSide, //tinggi menyesuaikan ini konten didalam center
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color.fromARGB(255, 242, 136, 23),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage("images/fotoprofil.jpg"),
                  ),
                  Text(
                    "ADEN AHMAD RIFAI",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    "Vocational High School Student at Smk Wikrama",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 49, 58, 76)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => page2()),
                      );
                    },child: Text('see More'),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("File Name"),
          leading: ElevatedButton(
            child: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () => {Navigator.pop(context)},
          ),
        ),
        body: Container(
          width: MediaQuery.of(context)
              .size
              .width, //Lebar diatur seuai dengan lebar layar
          height: MediaQuery.of(context)
              .size
              .height, //Lebar diatur seuai dengan lebar layar
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/page2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage("images/adenprofil.jpg"),
                ),
                Text(
                  "ADEN AHMAD RIFAI",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

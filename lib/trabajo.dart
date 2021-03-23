import 'package:flutter/material.dart';

class Trabajo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xFFDBC3F9), Color(0xFFE3D8F1)],
            begin: const FractionalOffset(1.0, 0.1),
            end: const FractionalOffset(1.0, 0.6),
          )),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 0.0),
                width: 600,
                height: 350,
                child: Image(
                  image: AssetImage('assets/images/trabajo.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0.0),
                child: (Text(
                  'Oferta de Trabajo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 0.0),
                child: (Text(
                  'Inteligencia Artificial',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.blueAccent),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0, left: 50.0, right: 30.0),
                child: (Text(
                    "Se necesita ingeniero en sistemas con conocimiento en AI"
                    "De preferencia con conocimeinto de calculo vectorial y programacion en Python.",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    textDirection: TextDirection.ltr)),
              ),
              Container(
                width: 350,
                height: 50,
                margin: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                child: (RaisedButton(
                  disabledColor: Colors.amber,
                  child: Text(
                    "Ofertar Trabajo",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  splashColor: Colors.amber,
                  color: Colors.blueAccent,
                  onPressed: () {},
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

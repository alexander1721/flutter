import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  // This widget is the root of your application.
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
                      height: 200.0,
                      width: 600.0,
                      margin:
                          EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/imagen.jpg'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 7.0))
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0.0, top: 50.0),
                      child: (Text(
                        "Bienvenido a mi APP de Data Science",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontFamily: "Anton"),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40.0, top: 20.0, right: 10.0),
                      child: (Text(
                        "En esta App encontraras la mejor informacion y noticias sobre lo nuevo del Data Science",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade800,
                            fontFamily: "Noto"),
                      )),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 0.0, top: 40.0),
                        child: (MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue)),
                          minWidth: 200.0,
                          height: 40.0,
                          onPressed: () {},
                          color: Colors.blueGrey,
                          child: Text('Conoce mas!',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Abel")),
                        )))
                  ],
                ))));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_data_science/info.dart';

class Noticia extends StatelessWidget {
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
                child: ListView(
                  children: [
                    Container(
                      height: 200.0,
                      width: 600.0,
                      margin:
                          EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/noticia.png'),
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
                      margin: EdgeInsets.only(left: 30.0, top: 50.0, right: 20.0),
                      child: (Text(
                        "Inteligencia Artificial y Data Science, prioridades de inversión tecnológica",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontFamily: "Anton"),
                      )),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 30.0, top: 20.0, right: 10.0),
                      child: (Text(
                        "Según los pronósticos que maneja Gartner, la inversión tecnológica en los próximos años estará liderada por los proyectos de Inteligencia Artificial (IA) y Data Science, al menos, hasta 2025."
                        "En 2025, más del 75% de las revisiones de capital riesgo y de los directivos de inversión se informarán mediante Inteligencia Artificial y Data Science. Sin duda, es uno de los datos que ponen en evidencia la importancia que están adquiriendo estas tecnologías y que llevarán a que cada vez más que incremente la inversión tecnológica en ellas.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade800,
                            fontFamily: "Noto"),
                      )),
                    ),
                    Container(
                      width: 200.0,
                        margin: EdgeInsets.only(left: 40.0, top: 40.0, right: 40.0, bottom: 10.0),
                        child: (MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue)),
                          minWidth: 200.0,
                          height: 40.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Informacion()),
                            );
                          },
                          color: Colors.blueGrey,
                          child: Text('Regresar',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Abel")),
                        )))
                  ],
                ))));
  }
}

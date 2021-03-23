import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_data_science/cards.dart';

class ListaCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300.0,
          child: ListView(
              padding: EdgeInsets.all(25.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CardElias("assets/images/data1.jpg",
                    "Big Data y Data Science el futuro"),
                CardElias("assets/images/data2.jpg",
                    "Inteligencia Artificial y Data Science"),
              ]),
        ),
      ],
    );
  }
}

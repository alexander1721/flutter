import 'package:flutter/material.dart';
import 'package:flutter_application_data_science/noticia.dart';

class CardElias extends StatelessWidget {
  String pathImage;
  String titleCard;

  CardElias(String pathImage, String titleCard) {
    this.pathImage = pathImage;
    this.titleCard = titleCard;
  }

  @override
  Widget build(BuildContext context) {
    final card = Stack(
      children: [
        Container(
          height: 300.0,
          width: 350.0,
          margin: EdgeInsets.only(top: 10.0, left: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Noticia()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pathImage),
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
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20.0, top: 140.0),
          child: (Text(
            titleCard,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ],
    );
    return card;
  }
}

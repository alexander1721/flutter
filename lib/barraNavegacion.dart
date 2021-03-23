import 'package:flutter/material.dart';
import 'package:flutter_application_data_science/info.dart';
import 'package:flutter_application_data_science/inicio.dart';
import 'package:flutter_application_data_science/trabajo.dart';


class BarraNavegacion extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BarraNavegacion();
  }
}

class _BarraNavegacion extends State{
  int indexCF = 0;
  final List<Widget> widgetScreens = [Inicio(), Informacion(), Trabajo()];
  void onTapped(int index){
    setState(() {
          indexCF = index;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetScreens[indexCF],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF0F36E4),
          primaryColor: Colors.black
        ),
        child: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: indexCF,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'INICIO'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined, color: Colors.black,),
              label: 'INFO'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge, color: Colors.black,),
              label: 'TRABAJO'
            )
          ],
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:pantalla/widget/Expansion_Tile.dart';
import 'package:pantalla/widget/buton_Bar.dart';

import 'package:pantalla/widget/header_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Color(0xffA8D240);
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xffE9E9E9),
        drawer: Text('Opciones'),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: color,
          title: Titulo(),
          actions: [ComprasButton(color: color)],
          leading: Leading(),
        ),
        body: ListView(
          children: [
            StackHeader(),
            Expansion(),
            SizedBox(
              height: size.height * 0.0282,
            ),
            Expansion(),
          ],
        ));
  }
}

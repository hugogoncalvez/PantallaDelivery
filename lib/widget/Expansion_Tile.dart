import 'package:flutter/material.dart';
import 'package:pantalla/widget/card_producto.dart';

class Expansion extends StatelessWidget {
  const Expansion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ExpansionTile(
      leading: Container(
        width: size.height * 0.118,
        height: size.height * 0.118,
        child: Container(
          color: Color(0xffE9E9E9),
          child: Image(
            image: AssetImage('assets/AliemtosExpansionTile.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Up To 60% OFF',
                  style: TextStyle(color: Colors.green[800]),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Grocery & Staples',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: size.height * 0.0253)),
                Text(
                    'New Launches , Pulses & Other. \nFlours, Rice & Other Grains',
                    style: TextStyle(fontSize: size.height * 0.016))
              ],
            ),
          )
        ],
      ),
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.40,
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Wrap(spacing: size.height * 0.0141, children: [
                ProductosCard('assets/Fideo.png', 'Fideo'),
                ProductosCard('assets/Arroz.png', 'Arroz'),
                ProductosCard('assets/DL.png', 'dulce de Leche'),
                ProductosCard('assets/Fideo.png', 'Fideo'),
                ProductosCard('assets/Harina.png', 'Harina'),
                ProductosCard('assets/Mayonesa.png', 'Mayonesa'),
                ProductosCard('assets/Fideo.png', 'Fideo'),
                ProductosCard('assets/Harina.png', 'Harina'),
                ProductosCard('assets/Mayonesa.png', 'Mayonesa'),
              ])),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ProductosCard extends StatelessWidget {
  final String imagenProducto;
  final String nombreProducto;

  const ProductosCard(this.imagenProducto, this.nombreProducto);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Color(0xffE9E9E9),
      width: size.height * 0.155,
      height: size.height * 0.155,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(size.height * 0.0282),
            child: Image(
              image: AssetImage(imagenProducto),
              height: size.height * 0.112,
              width: size.height * 0.084,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            nombreProducto,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.height * 0.018),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pantalla/widget/buton_Bar.dart';
import 'package:pantalla/widget/input_decoration.dart';

class BordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.23,
      decoration: BoxDecoration(
          color: Color(0xffA8D240),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(size.height * 0.0282),
              bottomRight: Radius.circular(size.height * 0.0282))),
    );
  }
}

class StackHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.35,
      child: Stack(children: [
        Positioned(
          top: size.height * 0.20,
          left: size.height * 0.020,
          child: Buttonbar(),
        ),
        BordesRedondeados(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: TextField(
            decoration: inputDecoration(context),
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          left: size.height * 0.025,
          child: _ImagenHeader(size: size),
        ),
        Positioned(
            top: size.height * 0.099,
            left: size.height * 0.03,
            child: Text(
              '50 % Off \nDelivery',
              style: TextStyle(
                  fontSize: size.height * 0.0340,
                  color: Colors.red[600],
                  fontWeight: FontWeight.w400),
            )),
        Positioned(
            top: size.height * 0.19,
            left: size.height * 0.041,
            child: Text(
              'Haga su Pedido en Línea',
              style: TextStyle(
                  fontSize: size.height * 0.0135,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w400),
            )),
      ]),
    );
  }
}

class _ImagenHeader extends StatelessWidget {
  const _ImagenHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.height * 0.45,
      height: size.height * 0.11,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage('assets/alimentos.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Location',
          style: TextStyle(fontSize: size.height * 0.017),
        ),
        Text('B-52 Tecor Building, sec-63 ',
            style: TextStyle(fontSize: size.height * 0.018)),
      ],
    );
  }
}

class Leading extends StatelessWidget {
  const Leading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.subject,
          size: size.height * 0.065,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }
}

class ComprasButton extends StatelessWidget {
  final color;

  const ComprasButton({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.shopping_basket,
        size: size.height * 0.0493,
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(color),
      ),
    );
  }
}

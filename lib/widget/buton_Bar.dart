import 'package:flutter/material.dart';

class Buttonbar extends StatelessWidget {
  const Buttonbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceAround,
      children: [
        _BotonesCabecera(textoBot: 'Ofertas'),
        _BotonesCabecera(textoBot: 'Categorías'),
        _BotonesCabecera(textoBot: 'Favoritos')
      ],
    );
  }
}

class _BotonesCabecera extends StatefulWidget {
  final String textoBot;

  const _BotonesCabecera({required this.textoBot});

  @override
  __BotonesCabeceraState createState() => __BotonesCabeceraState();
}

class __BotonesCabeceraState extends State<_BotonesCabecera> {
  bool _presionado = true;
  Color color = Color(0xffA8D240);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: Text(
          '${widget.textoBot}',
          style: TextStyle(fontSize: size.height * 0.017, color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: Size(size.height * 0.14, 30),
            primary: color));
  }
}

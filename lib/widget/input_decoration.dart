import 'package:flutter/material.dart';

InputDecoration inputDecoration(BuildContext context) {
  final size = MediaQuery.of(context).size;
  InputBorder _border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(size.height * 0.0423),
    ),
  );
  return InputDecoration(
    hintStyle: TextStyle(fontSize: size.height * 0.015, color: Colors.black38),
    hintText: 'Buscar Productos',
    prefixIcon: Icon(Icons.search_outlined),
    contentPadding: EdgeInsets.only(left: size.height * 0.0282),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: _border,
    focusedBorder: _border,
    errorBorder: _border,
    focusedErrorBorder: _border,
  );
}

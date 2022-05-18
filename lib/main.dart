import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: PaginaDado(),
      ),
    ),
  );
}

class PaginaDado extends StatefulWidget {
  const PaginaDado({Key? key}) : super(key: key);

  @override
  State<PaginaDado> createState() => new PaginaDadosState();
}

class PaginaDadosState extends State<PaginaDado> {
  final random = Random();
  int next(int min, int max) => min + random.nextInt(max - min);

  int dado1 = 0;
  int dado2 = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado1 = next(1, 6);
                });
              },
              child: Image.asset('images/dado$dado1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado2 = next(1, 6);
                });
              },
              child: Image.asset('images/dado$dado2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

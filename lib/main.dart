import 'package:flutter/material.dart';

void main() => runApp(RutApp());

class RutApp extends StatelessWidget {
  //StatelessWidget Il contenuto del widget *non cambia* durante il ciclo di vita
  @override // nella classe che abbiamo ereditato, c'è un metodo che vogliamo sovrascrivere

  Widget build(BuildContext context) {
    //il metodo da sovrascrivere è *build*
    return MaterialApp(
        title: 'Rut Flet',
        theme: ThemeData(primarySwatch: Colors.brown),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Gelateria da Rut Flet'),
          ),
          body: Builder(builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 50,
                ),
                Text(
                  'The best gelato in the world!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 50,
                ),
                Image.network('https://bit.ly/flutgelato'),
                Container(
                  height: 100,
                ),
                RaisedButton(
                  color: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    SnackBar snackBar =
                        SnackBar(content: Text('Rut\'s mail is rut@flet.dev'));
                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                  child: Text(
                    'Info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ]),
            );
          }),
        ));
  }
}

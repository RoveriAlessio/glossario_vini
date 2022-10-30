import 'package:flutter/material.dart';

void main() => runApp(RutApp());

class RutApp extends StatelessWidget {
  const RutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        title: "I tuoi Vini",
        home: Scaffold(
            appBar: AppBar(title: const Text('La tua enciclopedia dei vini')),
            body: Builder(builder: (context) {
               return SingleChildScrollView(
                   child: Column(
                       children: [
                         Container(
                           height: 50,
                         ),
                         const Text('Un buon dolce',
                           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold) //Ingrandito con fontSize e fatto in grassetto con fontWeight
                         ),
                         Container(
                           height: 50,
                         ),
                         Image.network('https://bit.ly/flutgelato'),
                         Container(
                           height: 100,
                         ),
                         ElevatedButton(
                             onPressed: () {
                               SnackBar snackBar = const SnackBar(
                                   content: Text('Per ora non hai vini salvati'));
                               ScaffoldMessenger.of(context).showSnackBar(snackBar);
                               },
                             child: const Text('Lista Vini',
                               style: TextStyle(color: Colors.white, fontSize: 20)
                             )),
              ]));
            })));
  }
}

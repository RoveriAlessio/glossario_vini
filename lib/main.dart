import 'package:flutter/material.dart';
import 'package:glossario_vini/ListaVini.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),
        title: "I tuoi Vini",
        home: Scaffold(
            appBar: AppBar(title: const Text('La tua enciclopedia dei vini')),
            body: Builder(builder: (context) {
               return SingleChildScrollView(
                 padding: const EdgeInsets.all(20.0),
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
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const ListaVini()),
                                 //per aprire una nuova pagina premendo un bottone
                               );
                             },
                             child: const Text('Lista Vini',
                               style: TextStyle(color: Colors.white, fontSize: 20)
                             )),
              ]));
            })));
  }
}

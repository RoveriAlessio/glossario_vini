import 'package:flutter/material.dart';

class ListaVini extends StatefulWidget {
  const ListaVini({super.key});

  @override
  State<ListaVini> createState() => _ListaViniState();
}

class _ListaViniState extends State<ListaVini> {
  final List<String> TipiVino = ['Rosso', 'Bianco', 'Rosé'];
  //final significa che non cambierà (lista statica)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Elenco dei vini a disposizione'),),
        body: Padding(
        padding: const EdgeInsets.all(20.0),
              child: Column(
                  children: [
                    const Spacer(),
                    TextField(
                      keyboardType: TextInputType.number,
                      //tipo di tastiera che uscirà quando l'utente vorrà inserire qualcosa nel TextField
                      //in questo caso uscirà una tastiera numerica
                      style: TextStyle(fontSize: 20, color: Colors.brown[900]),
                      decoration: InputDecoration(
                        hintText: "Inserisci l'annata dei vini da cercare" ,
                      ),
                    ),
                    const Spacer(),
                    DropdownButton<String>(
                        items: TipiVino.map((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value)
                          );
                        }).toList(),
                        onChanged: (String? newValue) {}),
                    //Items contiene gli elementi che compongono l'elenco
                    //il metodo MAP trasforma ciascun elemento contenuto in un insieme "String value" e
                    // restiuisce il risultato della trasformazione in un nuovo insieme (elenco) "DropDownMenuItem"
                    ElevatedButton(onPressed: () {}, child: const Text('Esamina vini in elenco')),
                    const Spacer(flex: 3),
                    Text(''),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          //per tornare alla home
                        },
                        child: const Text('Torna alla Home',
                            style: TextStyle(color: Colors.white, fontSize: 20)
                        )),
                  ]))
    );
  }
}

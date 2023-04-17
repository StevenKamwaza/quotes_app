import 'package:flutter/material.dart';
import 'quotes.dart';
void main() {
  runApp(const MaterialApp(
    home: Quotes() ,
  ));
}
class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List <Quote> quotes=[
    Quote(text: "hey", author: "che"),
    Quote(text: "bobho", author: "che-1"),
    Quote(text: "ngide", author: "che-3"),
    Quote(text: "hezo", author: "miso"),
  ];

  Widget quoteCards(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          Text(
            quote.text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height:10),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 19,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text(
          "Che Quotes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.7,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => quoteCards(quote)).toList(),
      ),
    );
  }
}


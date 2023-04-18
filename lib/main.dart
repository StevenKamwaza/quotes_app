import 'package:flutter/material.dart';
import 'quotes.dart';
import 'qoute_card.dart';

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
    Quote(text: "In the silence of our souls, we can hear the whispers of the universe guiding us towards our true purpose", author: "Che Win"),
    Quote(text: "Mmh, Success is not a destination, but a journey where each step taken is a victory.", author: "Number 1"),
    Quote(text: "Bloom where you are planted, for even the smallest seed can grow into the most beautiful flower", author: "che-3"),
    Quote(text: "Embrace every conversation with an open mind and a kind heart, for in doing so, you create opportunities for meaningful connections and new perspectives to enrich your life", author: "The Chat"),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Che Quotes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 29,
              letterSpacing: 2.9,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        //using arrow functions
        children: quotes.map((quote) => MyCard(quote: quote)).toList(),
      ),
    );
  }
}

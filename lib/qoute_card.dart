import 'package:flutter/material.dart';
import 'quotes.dart';

class MyCard extends StatelessWidget {
  Quote quote;
  MyCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0,15.0,30.0, 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
              '_${quote.author}',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 19,
                letterSpacing: 2.4,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.green[600],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


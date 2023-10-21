import 'package:flutter/material.dart';
import 'package:quotes17/Quote.dart';

class QuoteCard extends StatelessWidget {
  // const QuoteCard({
  //   super.key,             // we don't need this yet
  // });
  final Quote quote;
  final Function delete;

  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: (){delete();},
              icon: const Icon(Icons.delete),
              label: const Text("DELETE QUOTE"),
            )
          ],
        ),
      ),
    );
  }
}

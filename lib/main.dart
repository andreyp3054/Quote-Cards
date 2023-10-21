import 'package:flutter/material.dart';
import 'package:quotes17/Quote.dart';

import 'QuoteCard.dart';

void main() => runApp(
      const MaterialApp(home: QuoteList()),
    );

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Strike while the iron is hot", author: "Unknown"),
    Quote(text: "Spine Spine Divine, They Work Just Fine", author: "Maskarov"),
    Quote(text: "Rest in the end not in the middle", author: "Kobe Bryant")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Awesome Quotes"),
          centerTitle: true,
        ),
        body: Column(
          children: quotes
              .map(
                (quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ),
              )
              .toList(),
        ));
  }
}

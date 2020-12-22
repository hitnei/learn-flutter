import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes = [
  //   'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',
  //   'op publishing software like Aldus PageMaker including versions of Lorem Ipsum',
  //   'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
  // ];

  List<Quote> quotes = [
    Quote(
        text:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text',
        author: 'abc xyz'),
    Quote(
        text:
            'op publishing software like Aldus PageMaker including versions of Lorem Ipsum',
        author: 'abc xyz 123'),
    Quote(
        text:
            'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
        author: 'abc xyz 321'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

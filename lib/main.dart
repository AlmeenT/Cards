import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> Qoutes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'warisi'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Alex The Great'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'KIng!')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: Qoutes.map((quote) =>
          QuoteCard(
            quote: quote,
            /*delete: (){
              setState(() {
                Qoutes.remove(quote);
              });
            }*/
            )).toList(),
      ),
    );
  }
}


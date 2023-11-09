import 'package:first_app/quote_screen.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final String quote;
  final String author;
  final int year;

  const QuoteCard(
      {super.key,
      required this.quote,
      required this.author,
      required this.year});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return QuoteScreen(
                author: author,
                quote: quote,
                year: year,
              );
            },
          ),
        );
      },
      child: Card(
        elevation: 5,
        color: Colors.blue[50],
        margin: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      quote,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "$author ($year)",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

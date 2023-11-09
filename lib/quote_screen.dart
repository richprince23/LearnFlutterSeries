
import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  final String quote;
  final String author;
  final int year;

  const QuoteScreen(
      {super.key,
      required this.quote,
      required this.author,
      required this.year});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  late int yearAdd;

  @override
  void initState() {
    super.initState();
    print("page opened");
    yearAdd = widget.year + 100;
  }

  @override
  void dispose() {
    super.dispose();
    print("closed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(yearAdd.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.quote),
            SizedBox(height: 60),
            Text(widget.author),
            SizedBox(height: 60),
            FilledButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    showCloseIcon: true,
                    content: Text("You tricked me!"),
                  ),
                );
              },
              child: Text("SHow alert"),
            )
          ],
        ),
      ),
    );
  }
}

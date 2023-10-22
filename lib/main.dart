import 'dart:convert';

import 'package:first_app/quote_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// STATEFUL

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String quoteString = """[
  {
    "quote": "The only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle.",
    "author": "Steve Jobs",
    "year": 1997
  },
  {
    "quote": "If you're not embarrassed by the first version of your product, you've launched too late.",
    "author": "Reid Hoffman",
    "year": 2012
  },
  {
    "quote": "The best time to plant a tree was 20 years ago. The second best time is now.",
    "author": "Chinese Proverb",
    "year": 1900
  },
  {
    "quote": "If you want to go fast, go alone. If you want to go far, go together.",
    "author": "African Proverb",
    "year": 1800
  },
  {
    "quote": "The best way out is always through.",
    "author": "Robert Frost",
    "year": 1923
  },
  {
    "quote": "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.",
    "author": "Robert Frost",
    "year": 1916
  },
  {
    "quote": "In the midst of difficulty lies opportunity.",
    "author": "Albert Einstein",
    "year": 1930
  },
  {
    "quote": "The only thing that stands between you and your goal is the story you keep telling yourself about why you can't achieve it.",
    "author": "Jordan Belfort",
    "year": 2007
  },
  {
    "quote": "It does not matter how slowly you go as long as you do not stop.",
    "author": "Confucius",
    "year": 551 
  }
]
 """;

  late List<Map<String, dynamic>> quoteJson =
      List<Map<String, dynamic>>.from(jsonDecode(quoteString));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practice 2 (Quotes App)"),
      ),
      body: Center(
        child: SizedBox(
          child: ListView.builder(
              itemCount: quoteJson.length,
              itemBuilder: (context, index) {
                return QuoteCard(
                  quote: quoteJson[index]["quote"],
                  author: quoteJson[index]["author"],
                  year: quoteJson[index]["year"],
                );
              }),
        ),
      ),
    );
  }
}

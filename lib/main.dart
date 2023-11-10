import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Tabs"),
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Music"),
            ),
            Tab(
              child: Text("Movies"),
            ),
            Tab(
              child: Text("Books"),
            ),
          ]),
        ),
        drawer: Drawer(
          child: Column(children: [
            Container(
              height: size.height * 0.3,
              color: Colors.orange,
              child: const Center(
                child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.jpg")),
              ),
            ),
            SizedBox(
              height: size.height - (size.height * 0.3),
              child: ListView(
                children: const [
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    title: Text("Notifications"),
                  ),
                  ListTile(
                    title: Text("Settings"),
                  ),
                  ListTile(
                    title: Text("Logout"),
                  )
                ],
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.green,
            child: Center(child: Text("Music page")),
          ),
          Container(
            color: Colors.yellow,
            child: Center(child: Text("Movies page")),
          ),
          Container(
            color: Colors.purple,
            child: Center(child: Text("Books page")),
          ),
        ]),
      ),
    );
  }
}

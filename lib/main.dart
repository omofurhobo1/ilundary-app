import 'package:flutter/material.dart';
import 'package:ilundry/lundary_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.add)],
          title: const Text('ilundry'),
          centerTitle: true,
          backgroundColor: Colors.purple),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          children: [
            Text("Counter",
                style: TextStyle(
                    fontSize: 39,
                    color: Colors.purple,
                    fontStyle: FontStyle.italic)),
            AddCount(),
          ],
        ),
      ),
    );
  }
}

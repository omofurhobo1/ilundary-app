import 'package:flutter/material.dart';

class AddCount extends StatefulWidget {
  const AddCount({super.key});

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  int counter = 10;
  addCounter() {
    setState(() {
      counter++;
    });
  }

  subCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      } else {
        counter == 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              addCounter();
            },
            child: const Text("add")),
        Text(
          "$counter",
          style: const TextStyle(fontSize: 25.0, color: Colors.purple),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              subCounter();
            },
            child: const Text("Subtract"))
      ],
    );
  }
}

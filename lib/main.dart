import 'package:flutter/material.dart';
import 'package:ilundry/lundary_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("iLundary"),
        ),
        drawer: const Drawer(),
        body: Column(children: [
          const SizedBox(height: 20.5),
          Center(
            child: Text(
              "My Lundary Data",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue),
            ),
          ),
          const MyOrder(),
          StatData(),
          CustomStack(),
        ]),
      ),
    );
  }
}

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
      height: 150.0,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
          child: Text(
        "My Orders".toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 25),
      )),
    );
  }
}

class StatData extends StatelessWidget {
  const StatData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25.0,
        ),
        Container(
          child: Center(
              child: Text(
            '42\nCompleted',
            textAlign: TextAlign.center,
          )),
          height: 100,
          width: 150,
          color: Colors.yellow,
          margin: const EdgeInsets.only(top: 30),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, left: 40.0),
          padding: EdgeInsets.only(left: 15.0),
          child: Center(
              child: Text(
            '20\nPending',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )),
          height: 100,
          width: 150,
          color: Colors.blue,
        )
      ],
    );
  }
}

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.greenAccent,
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text("Place Order")),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text("Exit")),
              ),
            ],
          ),
        )
      ],
    );
  }
}

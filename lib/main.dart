import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilundry/PlaceOrder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("iLundary"),
        ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Column(children: const [
              SizedBox(height: 10.5),
              Center(
                child: Text(
                  "My Lundary Data",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.blue),
                ),
              ),
              MyOrder(),
              StatData(),
              CustomStack(),
            ]),
          ),
        ));
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
        const SizedBox(
          width: 20.0,
        ),
        Container(
          height: 100,
          width: 150,
          color: Colors.yellow,
          margin: const EdgeInsets.only(top: 30),
          child: const Center(
              child: Text(
            '42\nCompleted',
            textAlign: TextAlign.center,
          )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, left: 40.0),
          padding: const EdgeInsets.only(left: 15.0),
          height: 100,
          width: 150,
          color: Colors.blue,
          child: const Center(
              child: Text(
            '20\nPending',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PlaceOrder()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.greenAccent,
                  padding: const EdgeInsets.all(20),
                  child: const Center(child: Text("Place Order")),
                ),
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  SystemNavigator.pop();
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: const Center(child: Text("Exit")),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

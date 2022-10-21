import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Place Order"),
        centerTitle: true,
        actions: const [Icon(Icons.mail)],
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                    "Enter the details of your lundary orders and click to proceed",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.center),
                const Divider(
                  thickness: 4.0,
                  color: Colors.blue,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: ("e.g T-Shirt"),
                    //prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'Cloth Type',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // obscureText: true,
                  // obscuringCharacter: "#",
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: "Cloth Color",
                      hintText: ("e.g red or green")
                      // prefixIcon: Icon(Icons.key)),
                      ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // obscureText: true,
                  // obscuringCharacter: "#",
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: "Price",
                      prefix: Text("₦")),
                  // prefixIcon: Icon(Icons.key)),
                ),
                const SizedBox(height: 20),
                TextFormField(
                    // obscureText: true,
                    // obscuringCharacter: "#",
                    decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: "Quantity",
                  // prefix: Text("e.g red or green")
                  // prefixIcon: Icon(Icons.key)),
                )),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Proceed"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

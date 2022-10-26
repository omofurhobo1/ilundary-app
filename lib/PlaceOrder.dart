import 'package:flutter/material.dart';
import 'package:ilundry/OrderDetails.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  final TextEditingController colorType = TextEditingController();
  final TextEditingController clothType = TextEditingController();
  final TextEditingController price = TextEditingController();
  final TextEditingController quantity = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Place Order"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.mail),
            )
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                        "Enter the details of your laundry orders and click to proceed",
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
                      validator: (value) {
                        if (value == "") {
                          return "Cloth type required";
                        }
                        if (value!.length < 3) {
                          return "must be greater than 3";
                        }
                        return null;
                      },
                      controller: clothType,
                      decoration: const InputDecoration(
                        hintText: ("e.g T-Shirt"),
                        //prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelText: 'Cloth Type',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Clothe Color is required";
                        }
                        if (value!.length < 2) {
                          return "must be greater than 2";
                        }
                        return null;
                      },
                      controller: colorType,
                      // obscureText: true,
                      // obscuringCharacter: "#",
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: "Cloth Color",
                          hintText: ("e.g red or green")
                          // prefixIcon: Icon(Icons.key)),
                          ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Please enter a numeric value ";
                        }
                        return null;
                      },
                      controller: price,
                      keyboardType: TextInputType.number,
                      // obscureText: true,
                      // obscuringCharacter: "#",
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: "Price",
                          prefix: Text("₦")),
                      // prefixIcon: Icon(Icons.key)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                        validator: (value) {
                          if (int.parse(value!) < 1) {
                            return "Quanty must be greater than 0 Required";
                          }
                          return null;
                        },
                        controller: quantity,
                        keyboardType: TextInputType.number,
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
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return OrderDetails(
                                clothType: clothType.text,
                                colorType: colorType.text,
                                price: int.parse(price.text),
                                quantity: int.parse(quantity.text),
                              );
                            }),
                          );
                        }

                        return;
                      },
                      child: const Text("Proceed"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}

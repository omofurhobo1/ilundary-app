import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails(
      {Key? key,
      required this.clothType,
      required this.colorType,
      required this.price,
      required this.quantity})
      : super(key: key);
  final clothType;
  final String colorType;
  final int price;
  final int quantity;
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.girl),
              title: Text("Clothe Type Is: ${widget.clothType}"),
            ),
            ListTile(
              leading: const Icon(Icons.color_lens),
              title: Text("Clothe Colour is: ${widget.colorType}"),
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: Text("Your Price: ${widget.price}"),
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits_outlined),
              title: Text("Quantity: ${widget.quantity}"),
            )
          ],
        ),
      ),
    );

    //   TextButton(
    //   onPressed: (){
    //     Navigator.push(context, route)
    //  },
    // )
    //;
  }
}

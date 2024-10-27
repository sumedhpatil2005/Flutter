import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: googlepay(),
    );
  }
}

class googlepay extends StatefulWidget {
  const googlepay({super.key});
  @override
  State createState() => _googlepay();
}

class _googlepay extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  child: Image.network(
                      "https://img.freepik.com/premium-vector/man-is-looking-atm-business-flat-illustration_1134986-5388.jpg?w=826",
                      fit: BoxFit.cover),
                )
              ],
            )));
  }
}

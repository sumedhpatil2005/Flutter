import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: shoes(),
    );
  }
}

class shoes extends StatefulWidget {
  const shoes({super.key});

  @override
  State createState() => _shoesState();
}

class _shoesState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Shoes ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            actions: const [
              Icon(Icons.shopping_cart),
            ]),
        body: Column(children: [
          Container(
            alignment: Alignment.topCenter,
            // height:600,
            // width:400,
            child: Image.network(
              "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: const Text("Nike Air Force 1'07",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          Container(
              child: Row(children: [
            const Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 85, 39, 164))),
                child: Text("Shoes", style: TextStyle(color: Colors.white))),
            const SizedBox(width: 10),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 85, 39, 164))),
                child: Text("FOOTWEAR", style: TextStyle(color: Colors.white))),
          ])),
          Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "with iconic style and legendary comfort the Af-1 was made to be worn on repeat this iterartion puts a fresh spin on the hoops classics with reflectibe",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )),
          const SizedBox(height: 10),
          Container(
              child: Row(children: [
            const Padding(padding: EdgeInsets.all(8)),
            const Text("Quantity",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            const Icon(Icons.remove),
            SizedBox(width: 5),
            Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text("2"),
                )),
            SizedBox(width: 5),
            const Icon(Icons.add),
          ])),
          SizedBox(height: 10),
          SizedBox(
            height: 40,
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Purchase",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 85, 39, 164))),

              //
            ),
          )
        ]));
  }
}

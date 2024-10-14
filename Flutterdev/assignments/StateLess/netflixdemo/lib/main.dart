import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Netflix",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: ListView.builder(
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Action Movies",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 300,
                              width: 200,
                              child: Image.network(
                                  "https://imgs.search.brave.com/cnPMuERBTBDklBr7vQIwh0Zsyz_-DuRTdDiWpSsKpWE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFFNTIwWkJpV0wu/anBn"),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 300,
                              width: 200,
                              child: Image.network(
                                  "https://imgs.search.brave.com/HDB9oTW0e1jyn1OIWYKt3lqOs4-LK2FpWuSDPQ6WF6I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly8xODQ3/ODg0MTE2LnJzYy5j/ZG43Ny5vcmcvaGlu/ZGkvZ2FsbGVyeS9t/b3ZpZXMvcmFlZXMv/cmFlZWVzX3Bvc3Rl/ci5qcGc"),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 300,
                              width: 200,
                              child: Image.network(
                                  "https://imgs.search.brave.com/6zIoDBG1lGIAe5xrCKzolH6XXVMj1S56RrcMczlyRRI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly8xODQ3/ODg0MTE2LnJzYy5j/ZG43Ny5vcmcvaGlu/ZGkvZ2FsbGVyeS9t/b3ZpZXMvamFnZ2Fq/YXNvb3MvamFnYWFq/YXNvb3NfcG9zdGVy/LmpwZw"),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 300,
                              width: 200,
                              child: Image.network(
                                  "https://imgs.search.brave.com/hW5o-8HKqbWTyeyS2sgsEN4LJqoFG7b_wlIIXiah7NM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly8xODQ3/ODg0MTE2LnJzYy5j/ZG43Ny5vcmcvaGlu/ZGkvZ2FsbGVyeS9t/b3ZpZXMvaGFyYWFt/a2hvci9oYWFyYW1f/cG9zdGVyLmpwZw"),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 300,
                              width: 200,
                              child: Image.network(
                                  "https://imgs.search.brave.com/cnPMuERBTBDklBr7vQIwh0Zsyz_-DuRTdDiWpSsKpWE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFFNTIwWkJpV0wu/anBn"),
                            )
                          ]))
                    ]);
              })),
    );
  }
}

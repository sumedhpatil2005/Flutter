import "dart:ffi";

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
      home: Netflix(),
    );
  }
}

class Netflix extends StatefulWidget {
  const Netflix({super.key});
  @override
  State createState() => _Netflix();
}

class _Netflix extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          child: Image.network(
            "https://imgs.search.brave.com/OTiO40mtYMp4sjqTrhtExdP2h1X1PDwizRwt08_WLD0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDUwNjMz/NDIucG5n",
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 30,
              child: Image.network(
                  "https://imgs.search.brave.com/_1YhWGfJE_pbpg5x-rNvmWKanuf0TuNM8vjby3XCJhQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvbmV0/ZmxpeC1wcm9maWxl/LXBpY3R1cmVzLTEw/MDAteC0xMDAwLXFv/OWg4MjEzNHQ5bnYw/ajAuanBn"),
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const Row(children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "TV Shows",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            )
          ]),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      height: 400,
                      width: 300,
                      child: Image.network(
                          "https://imgs.search.brave.com/aLjYIIl9hntqNS1BDaX6k1wZ1w-5MW3jdEgSJ6sjsBQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk4ySmtNRGM1/TUdRdFpqZzNZUzAw/Tm1GaUxXSXlabVF0/WlRKbU5UTTVNalZt/WVRRNFhrRXlYa0Zx/Y0djQC5qcGc",
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      height: 400,
                      width: 300,
                      child: Image.network(
                          "https://imgs.search.brave.com/2BKNaNtNNyNW6dehqTLm9ePV1lyEhJQNm3pKtQwgGic/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cHJvZC53ZWJzaXRl/LWZpbGVzLmNvbS81/ZGY2YTM0M2YzNzNj/ODk1ZjllNTdmNzAv/NjM2ZTlkMjczNzg1/YmM4MDQyM2MwYWFm/X1JSUl9OYWF0dVBv/c3Rlcl8xMDgweDE2/MDAuanBn",
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      height: 400,
                      width: 300,
                      child: Image.network(
                          "https://imgs.search.brave.com/ptIT6LkLLKq1QM0kftYwQTHKltgqGbz0_ji6tQUeYEc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDEyODAz/ODM3LmpwZw",
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text("Charming Feel-Good Comedy Moives",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ),
          Row(
            children: [
              const SizedBox(width: 40),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Container(
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  const Text("My List", style: TextStyle(color: Colors.white))
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  width: 65,
                  child: const Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black),
                      Text("Play")
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: const Column(children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ])),
              )
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Releases in the Past Year",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://creativereview.imgix.net/content/uploads/2023/12/Oppenheimer.jpg?auto=compress,format&q=60&w=1263&h=2000"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BMjRiMWI0M2UtM2JlMC00NGI5LTk3YWEtYmI4MTc0ZjBiN2VjXkEyXkFqcGc@._V1_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/1/1e/The_Greatest_of_All_Time.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BZTEyYzVjYjEtNWYzZi00NWRhLTgyZjUtNDlkZjBiNWIxYTEwXkEyXkFqcGc@._V1_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BNGI5MjMzODQtMDlhMi00MWU0LTk0MzAtZmY4ZmU4NzU1MmY5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Action Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BODViOTZiOTQtOTc4ZC00ZjUxLWEzMjItY2ExMmNlNDliNjE4XkEyXkFqcGc@._V1_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BOTFlMTIxOGItZTk0Zi00MTk2LWJiM2UtMzlhZWYzNjQ4N2Y3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/b/b6/Buddy_%282024_film%29.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                    "https://m.media-amazon.com/images/M/MV5BNTkwNDIwZDctNzQ5NC00OTcwLWIzMTEtNWM1MWRkMjg3OTYwXkEyXkFqcGc@._V1_.jpg",
                  ),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Fighter_film_teaser.jpg/220px-Fighter_film_teaser.jpg",
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Comedy Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                    "https://m.media-amazon.com/images/M/MV5BZmVmZGVmYmYtNTIwOC00NjY0LWE3MWItYTRmNTQxZjU2OTA1XkEyXkFqcGc@._V1_.jpg",
                  ),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/3/31/Ghostbusters_%282024%29_poster.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BNGRmYjBmOWQtMmY1NS00Njk3LWFkYWYtZWY3ODQ0N2U2NTBhXkEyXkFqcGc@._V1_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/e/e7/Wild_Wild_Punjab.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/6/6b/Union_2024_film_poster.jpg"),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Thrillers",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/4/4c/Kalki_2898_AD.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/Shaitaan_2024_film_theatrical_poster.jpeg/220px-Shaitaan_2024_film_theatrical_poster.jpeg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://resizing.flixster.com/sJ_Dnc5wk9vPn4tTuM0lTdkkrsE=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzAyZDdmZmFiLTUzN2EtNDJhOS04ZWQzLWUwYTU4MjQ3ZmY5Yi5qcGc="),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BNjY3NTkxMjQtZWNjNy00NGU2LTlhOTMtMmRhZGEwNzRmMDcyXkEyXkFqcGc@._V1_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Fighter_film_teaser.jpg/220px-Fighter_film_teaser.jpg"),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("New Releases",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/double-ismart-et00359660-1715779326.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/3/39/Munjya_2024.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/e/e7/Wild_Wild_Punjab.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BNDBlMTEyMjQtZTVmMC00NWZhLWE3MmMtYTZlZTg1MTQ2MzVkXkEyXkFqcGc@._V1_.jpg"),
                ),
                Container(
                  height: 150,
                  width: 130,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BZmVmZGVmYmYtNTIwOC00NjY0LWE3MWItYTRmNTQxZjU2OTA1XkEyXkFqcGc@._V1_.jpg"),
                ),
              ],
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.black,
    );
  }
}

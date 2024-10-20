import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Where do you want to travel?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 24.0, bottom: 24, right: 24),
                child: SizedBox(
                  // width: MediaQuery.of(context).size.width,
                  width: 364,
                  height: 51,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 237, 248, 1),
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                        ),
                        width: 260,
                        height: 51,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Select Destination",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(52, 111, 249, 1)),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color.fromRGBO(52, 111, 249, 1),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(51, 111, 249, 1),
                        ),
                        width: 41,
                        height: 41,
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Text(
                "Best Deals",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Sorted by lower price",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromRGBO(233, 237, 248, 1)),
                      width: 175,
                      height: 175,
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rajasthan",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Jaipur",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(179, 182, 187, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image,
                                size: 60,
                                color: Color.fromRGBO(138, 150, 172, 1),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.white,
                                ),
                                width: 63,
                                height: 38,
                                child: const Text(
                                  "More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(
                                      52,
                                      111,
                                      249,
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: const Color.fromRGBO(
                                    52,
                                    111,
                                    249,
                                    1,
                                  ),
                                ),
                                width: 63,
                                height: 38,
                                child: const Text(
                                  "\$260",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromRGBO(233, 237, 248, 1)),
                      width: 175,
                      height: 175,
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Maharastra",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Mumbai",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(179, 182, 187, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image,
                                size: 60,
                                color: Color.fromRGBO(138, 150, 172, 1),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.white,
                                ),
                                width: 63,
                                height: 38,
                                child: const Text(
                                  "More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(
                                      52,
                                      111,
                                      249,
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: const Color.fromRGBO(
                                    52,
                                    111,
                                    249,
                                    1,
                                  ),
                                ),
                                width: 63,
                                height: 38,
                                child: const Text(
                                  "\$260",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromRGBO(233, 237, 248, 1)),
                      width: 175,
                      height: 175,
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Goa",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "LakeView",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(179, 182, 187, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image,
                                size: 60,
                                color: Color.fromRGBO(138, 150, 172, 1),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.white,
                                ),
                                width: 63,
                                height: 38,
                                child: const Text(
                                  "More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(
                                      52,
                                      111,
                                      249,
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: const Color.fromRGBO(
                                    52,
                                    111,
                                    249,
                                    1,
                                  ),
                                ),
                                width: 63,
                                height: 38,
                                child: const Text(
                                  "\$260",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Popular Destinations",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Sorted by Higher reting",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233, 237, 248, 1)),
                          width: 175,
                          height: 175,
                          child: const Icon(
                            Icons.image,
                            size: 60,
                            color: Color.fromRGBO(138, 150, 172, 1),
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "France",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Paris",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "848",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233, 237, 248, 1)),
                          width: 175,
                          height: 175,
                          child: const Icon(
                            Icons.image,
                            size: 60,
                            color: Color.fromRGBO(138, 150, 172, 1),
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Japan",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Tokyo",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "663",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233, 237, 248, 1)),
                          width: 175,
                          height: 175,
                          child: const Icon(
                            Icons.image,
                            size: 60,
                            color: Color.fromRGBO(138, 150, 172, 1),
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "U.S.A",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Oregon",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "848",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Popular Destinations",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Sorted by Higher reting",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233, 237, 248, 1)),
                          width: 175,
                          height: 175,
                          child: const Icon(
                            Icons.image,
                            size: 60,
                            color: Color.fromRGBO(138, 150, 172, 1),
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Germany",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Hamburg",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "848",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233, 237, 248, 1)),
                          width: 175,
                          height: 175,
                          child: const Icon(
                            Icons.image,
                            size: 60,
                            color: Color.fromRGBO(138, 150, 172, 1),
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "India",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Delhi",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "663",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233, 237, 248, 1)),
                          width: 175,
                          height: 175,
                          child: const Icon(
                            Icons.image,
                            size: 60,
                            color: Color.fromRGBO(138, 150, 172, 1),
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Australia",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Sydney",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228, 161, 2, 1),
                                    ),
                                    Text(
                                      "4.6",
                                      style: TextStyle(
                                        color: Color.fromRGBO(228, 161, 2, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "848",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Color.fromRGBO(179, 182, 187, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

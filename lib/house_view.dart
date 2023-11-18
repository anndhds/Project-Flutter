import 'package:flutter/material.dart';

class HouseView extends StatelessWidget {
  List<String> Locations = [
    "Bogor, Jawa Barat",
    "Semarang, Jawa Tengah",
    "Denpasar, Bali",
  ];
  List<String> HouseName = [
    "Penginapan Musim Liburan",
    "Tempat Bersantay Seru",
    "Rumah Tropis",
  ];

  List<String> HouseImage = [
    "assets/s3.jpg",
    "assets/s2.jpg",
    "assets/s1.jpg",
  ];

  final HouseTextStyle = TextStyle(fontSize: 20, color: const Color.fromARGB(255, 10, 60, 101));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber.shade300,
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/b5.jpg"),
                      ),
                    ),
                    Positioned(
                        child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
            child: Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Nands Elite House",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                  SizedBox(
                    height: 10,
                ),
                Text(
                  "Nands Elite House adalah tempat tinggal yang nyaman."
                ),
                  SizedBox(
                    height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("5 Kasur", style: HouseTextStyle),
                    Text("6 Kamar Mandi", style: HouseTextStyle),
                    Text("5,202 sqft ", style: HouseTextStyle),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.deepOrange ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Jl. Raya Bukit Permai, Bogor Jawa Barat",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harga",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text("\Rp 5.500.000,00/",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                            ),
                          Text("Bulan"),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple,
                      ),
                      child: Center(
                        child: Text(
                          "Pesan Sekarang",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


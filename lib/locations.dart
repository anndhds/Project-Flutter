import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/houses_widget.dart';

class Locations extends StatelessWidget {
  List<String> PropertyType = [
    "Home",
    "Flat",
    "Apartement",
    "Hotel",
  ];
  List<Icon> PropertyIcons = [
    Icon(Icons.house_rounded, size: 40, color: Colors.amber.shade400),
    Icon(Icons.business_outlined, size: 40, color: Colors.deepPurple.shade900),
    Icon(Icons.apartment, size: 40, color: Colors.lightGreenAccent.shade400),
    Icon(Icons.home_work_outlined, size: 40, color: Colors.teal),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff7f6fb),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lokasi",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.deepOrangeAccent.shade700,
                          ),
                          Text(
                            "Pangkal Pinang, ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Girimaya",
                            style: TextStyle(
                              fontSize: 25, color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    label: Text("Search"),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(7),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.filter_list_sharp,
                          color: Colors.white,
                        ),
                      ),
                    )
                ),),
              ),
              SizedBox(height: 20),
              Text(
                "Mencari Properti",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 20),
              Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.9,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(7),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          (PropertyIcons[index]),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PropertyType[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "123 items",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 30),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pilihan Terbaik untuk Anda",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                     child: Text("Lihat Semua"),
                  )
                ],
              ),
              SizedBox(height: 10),
              HousesWidget(),
            ],
          ),
        ),
        bottomNavigationBar: CircleNavBar(
          onTap: null,
          height: 60,
          circleWidth: 50,
          activeIndex: 2,
          circleColor: Colors.purple,
          color: Colors.white,
          activeIcons: [
            Icon(Icons.location_city_rounded, color: Colors.black54),
            Icon(Icons.compass_calibration, color: Colors.black54),
            Icon(Icons.bookmark, color: Colors.white),
            Icon(Icons.mail,color:  Colors.black54),
            Icon(Icons.person, color: Colors.black54),
          ],
          inactiveIcons: [
            Icon(Icons.location_city_rounded, color: Colors.black54),
            Icon(Icons.compass_calibration, color: Colors.black54),
            Icon(Icons.bookmark, color: Colors.deepOrange),
            Icon(Icons.mail,color:  Colors.black54),
            Icon(Icons.person, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/locations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.building_2_fill,
                    color: Colors.purpleAccent,
                    size: 50,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Hi, NDAA!  ",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/b1.jpg",
                  height: 450,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Mari Temukan Tempat Impian\n& Wujudkan Mimpi Manismu",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize:27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Temukan Tempat Impian Anda dalam satu sentuhan",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize:15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Locations(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ayo Mulai",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      Icon(
                        Icons.arrow_outward_outlined,
                        color: Colors.white,  
                      ),
                    ],
                  )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
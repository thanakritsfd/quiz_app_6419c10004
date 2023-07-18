// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_6419c10004/views/search_ui.dart';

class MyProfileUI extends StatelessWidget {
  const MyProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/1.png",
      "assets/images/2.png",
      "assets/images/3.png",
      "assets/images/4.png",
      "assets/images/5.png",
      "assets/images/6.png",
      "assets/images/7.png",
      "assets/images/8.png",
      "assets/images/9.png",
      "assets/images/10.png",
      "assets/images/11.png",
      "assets/images/12.png"
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              CircleAvatar(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Avatar.jpg',
                  ),
                  radius: MediaQuery.of(context).size.width * 0.18,
                ),
                radius: MediaQuery.of(context).size.width * 0.18,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                'Guitar',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                ),
              ),
              Text(
                'Thanakrit Phrompong',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
              Text(
                'ID: 6419C10004',
                style: GoogleFonts.kanit(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'FOLLOW ME',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.black,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.92,
                    MediaQuery.of(context).size.width * 0.14,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchUI(),
                    ),
                  );
                },
                child: Text(
                  'SEARCH',
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: const BorderSide(
                    width: 3,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.92,
                    MediaQuery.of(context).size.width * 0.14,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.92,
                child: GridView.builder(
                  padding: EdgeInsets.all(0.0),
                  physics: ScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

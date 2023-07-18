// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchUI extends StatelessWidget {
  const SearchUI({super.key});

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
      "assets/images/12.png",
      "assets/images/13.png",
      "assets/images/14.png",
      "assets/images/15.png",
      "assets/images/16.png",
      "assets/images/17.png",
      "assets/images/18.png"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[300],
              height: 1.0,
            ),
            preferredSize: const Size.fromHeight(2.0)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'SEARCH',
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        'SEARCH',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.black,
                      ),
                    ),
                    hintStyle: GoogleFonts.kanit(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        'ALL RESULTS',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.68,
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

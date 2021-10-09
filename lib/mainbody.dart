import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class MainBody extends StatefulWidget {
  MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

double heights = 0;
int weight = 0;
int heightint = heights.toInt();
var heightmeter = heights / 100;
double bmikira = weight / (heightmeter * heightmeter);
double resultbmis = 0;
int age = 0;
var colortappedgendermale = Colors.white;
var colortappedgenderfemale = Colors.white;

double resultbmi(weights, heightss) {
  var yo = heightss.toInt();
  var heightmeters = yo / 100;
  return weights / (heightmeters * heightmeters);
}

extension Precision on double {
  double toPrecision(int fractionDigits) {
    var mod = pow(10, fractionDigits.toDouble()).toDouble();
    return ((this * mod).round().toDouble() / mod);
  }
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    

    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                    colortappedgendermale = Colors.black;
                    colortappedgenderfemale = Colors.white; 
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Icon(Icons.male_outlined,
                          size: 50, color: colortappedgendermale),
                      Text("Male",
                          style: GoogleFonts.poppins(color: Colors.white)),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.pink,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                        
                    setState(() {
                    colortappedgenderfemale = Colors.black;
                    colortappedgendermale = Colors.white; 
                      
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Icon(Icons.female_outlined,
                          size: 50, color: colortappedgenderfemale),
                      Text("Female",
                          style: GoogleFonts.poppins(color: Colors.white)),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        SizedBox(height: 60),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 140,
                color: Colors.purple,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text("Height : ",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 18)),
                    SizedBox(height: 5),
                    Text("${heights.toInt()} CM",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Container(
                        margin: const EdgeInsets.only(left: 50, right: 50),
                        width: double.infinity,
                        height: 60,
                        child: Slider(
                          activeColor: Colors.yellow,
                          inactiveColor: Colors.orange,
                          value: heights,
                          min: 0,
                          max: 260,
                          label: heights.toString(),
                          onChanged: (heightss) => setState(
                            () => heights = heightss,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                  color: Colors.green,
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      Text("Weight",
                          style: GoogleFonts.poppins(color: Colors.white)),
                      Text("$weight KG",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight -= 1;
                                  }
                                });
                              },
                              child: Icon(Icons.remove)),
                          SizedBox(width: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (weight >= 0) {
                                    weight += 5;
                                  }
                                });
                              },
                              child: Icon(Icons.add)),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                  color: Colors.green,
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      Text("Age",
                          style: GoogleFonts.poppins(color: Colors.white)),
                      Text("$age",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age -= 1;
                                  }
                                });
                              },
                              child: Icon(Icons.remove)),
                          SizedBox(width: 10),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (age >= 0) {
                                    age += 2;
                                  }
                                });
                              },
                              child: Icon(Icons.add)),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 10)
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              setState(() {
                resultbmis = resultbmi(weight, heights);
              });
            },
            child: Text("Calculate")),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("BMI : \n ${resultbmis.toPrecision(2)} ")],
        )
      ],
    );
  }
}

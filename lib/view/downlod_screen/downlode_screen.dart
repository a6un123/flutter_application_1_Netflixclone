import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';

class DownlodeScreen extends StatelessWidget {
  const DownlodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColourConstents.mainblack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Smart Downlodes",
          style: TextStyle(color: ColourConstents.mainwhite, fontSize: 14),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Introducing Downlodes For You",
              style: TextStyle(
                  color: ColourConstents.mainwhite,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style:
                  TextStyle(color: ColourConstents.mainwhite, fontSize: 9.16),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 88,
                backgroundColor: ColourConstents.blackGray,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: 353,
                color: ColourConstents.blue,
                child: Center(
                    child: Text(
                  "SETUP",
                  style: TextStyle(
                      color: ColourConstents.mainwhite, fontSize: 13.86),
                )),
              ),
            ),
            SizedBox(
              height: 49,
            ),
            Center(
              child: Container(
                height: 33,
                width: 239,
                color: ColourConstents.blackGray,
                child: Center(
                    child: Text(
                  "Find Something to Download",
                  style:
                      TextStyle(color: ColourConstents.mainwhite, fontSize: 16),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

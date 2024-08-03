import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.Imageurl});
  final String Imageurl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
         Imageurl,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Remindme",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Season 1 comming December 14",
                style:
                    TextStyle(color: ColourConstents.mainwhite, fontSize: 11),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Lorem ipusam dolor sit amet,consecteur adipising elit. sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan quis.Massa,id ut ipsum aliquam enim non posure pulivinar diam",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: ColourConstents.mainwhite,
                  fontSize: 11,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Steamy . sopy . slow . burn . suspenceful . teen . mystry ",
                style: TextStyle(
                    color: ColourConstents.mainwhite,
                    fontSize: 11,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 12,
              )
            ],
          ),
        )
      ],
    );
  }
}

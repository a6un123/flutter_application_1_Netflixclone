import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dummy_db.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';
import 'package:flutter_application_1/view/CommingSoonScren/widget/custom_video_card.dart';
import 'package:flutter_application_1/view/CommingSoonScren/widget/newarrival_card.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColourConstents.mainblack,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.transparent,
          leading: Center(
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xffF50914),
              child: Icon(
                Icons.notifications,
                size: 20,
                color: ColourConstents.mainwhite,
              ),
            ),
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColourConstents.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: List.generate(
                  DummyDb.NewArrivalCarList.length,
                  (index) =>
                      NewArrivalCar(imageurl: DummyDb.NewArrivalCarList[index]),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: List.generate(
                  DummyDb.MoviePageList.length,
                  (index) => CustomVideoCard(Imageurl: DummyDb.MoviePageList[index],),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';

class NewArrivalCar extends StatelessWidget {
  const NewArrivalCar({
    super.key, required this.imageurl,
  
  });
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: ColourConstents.Gray,
      child: Row(
        children: [
          ClipRRect(
            child: Image.network(
                fit: BoxFit.cover,
                height: 55,
                width: 113,
                imageurl),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrival",
                style: TextStyle(
                    color: ColourConstents.mainwhite, fontSize: 14),
              ),
              Text(
                "EL chapo",
                style: TextStyle(
                    color: ColourConstents.mainwhite, fontSize: 14),
              ),
              Text(
                "Nov 6",
                style: TextStyle(
                    color: ColourConstents.mainwhite.withOpacity(.47),
                    fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
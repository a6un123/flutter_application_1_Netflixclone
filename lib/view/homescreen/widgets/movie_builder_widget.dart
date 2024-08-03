import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';

class MovieBuilderWidget extends StatelessWidget {
  const MovieBuilderWidget(
      {super.key,
      this.isCircle = false,
      this.Customheight = 163,
      this.Customwidth = 103,
      required this.Titlle,
      required this.images,  this.HaveInfoCard =false});
  final bool isCircle;
  final double Customheight;
  final double Customwidth;
  final String Titlle;
  final List<String> images;
  final bool HaveInfoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            Titlle,
            style: TextStyle(
                color: ColourConstents.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 20.92),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SizedBox(
          height: isCircle ? Customwidth : Customheight,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: Customheight,
                  width: Customwidth,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(images[index])),
                      color: Colors.green,
                      shape: isCircle ? BoxShape.circle : BoxShape.rectangle),
                      child: Visibility(
                        visible: HaveInfoCard,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: Colors.grey,
                              height: 3,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 7),
                              color: ColourConstents.mainblack,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                   Icons.info_outline ,color: ColourConstents.mainwhite,
                                  ),
                                  Icon(
                                    Icons.more_vert,color: ColourConstents.mainwhite,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 7,
                );
              },
              itemCount: images.length),
        ),
        SizedBox(
          height: 22,
        )
      ],
    );
  }
}

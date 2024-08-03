import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dummy_db.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';
import 'package:flutter_application_1/utils/constents/Image_constents.dart';
import 'package:flutter_application_1/view/global_widgets/user_name_card.dart';

class Morescreen extends StatefulWidget {
  const Morescreen({super.key});
  @override
  State<Morescreen> createState() => _MorescreenState();
}

class _MorescreenState extends State<Morescreen> {
  int Selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColourConstents.mainblack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUser_namecard(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColourConstents.mainwhite,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Manageprofiles",
                  style: TextStyle(
                      color: ColourConstents.mainwhite, fontSize: 14.5),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              decoration: BoxDecoration(color: Colors.grey.withOpacity(.1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.sms,
                        color: ColourConstents.mainwhite,
                      ),
                      Text(
                        "Tell Friends about Netflix",
                        style: TextStyle(
                            color: ColourConstents.mainwhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut.A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: TextStyle(
                      color: ColourConstents.mainwhite,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Terams & conditions",
                    style: TextStyle(
                        color: ColourConstents.Gray,
                        decorationThickness: 2,
                        decoration: TextDecoration.underline,
                        decorationColor: ColourConstents.Gray,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: ColourConstents.mainblack,
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: Colors.white,
                        width: 96,
                        height: 45,
                        child: Center(
                            child: Text(
                          "copy link",
                          style: TextStyle(color: ColourConstents.mainblack),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstents.WHATSAPP_ICON),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 41,
                        width: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(ImageConstents.FACEBOOK_TCON),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 41,
                        width: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(ImageConstents.GMAIL_ICON),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 41,
                        width: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: ColourConstents.mainwhite,
                          ),
                          Text(
                            "more",
                            style: TextStyle(color: ColourConstents.mainwhite),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 26,
                ),
                Icon(
                  Icons.check,
                  size: 33,
                  color: ColourConstents.mainwhite,
                ),
                Text(
                  "My List",
                  style:
                      TextStyle(color: ColourConstents.mainwhite, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              color: ColourConstents.mainblack,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App settings",
                    style: TextStyle(
                        color: ColourConstents.mainwhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        color: ColourConstents.mainwhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                        color: ColourConstents.mainwhite, fontSize: 15),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Sign out",
                    style: TextStyle(
                        color: ColourConstents.mainwhite, fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUser_namecard() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              DummyDb.UserList.length,
              (index) => UserNameCard(
                  oncardtap: () {
                    Selectedindex = index;
                    setState(() {});
                  },
                  height: index == Selectedindex ? 70 : 60,
                  width: index == Selectedindex ? 73 : 65,
                  imagepath: DummyDb.UserList[index]["image path"].toString(),
                  Name: DummyDb.UserList[index]["name"].toString()),
            ),
          ),
          Container(
            height: 60,
            width: 63,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Icon(
              Icons.add,
              color: ColourConstents.mainwhite,
              size: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColourConstents.mainwhite)),
          )
        ],
      ),
    );
  }
}

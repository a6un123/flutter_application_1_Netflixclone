import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dummy_db.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';
import 'package:flutter_application_1/utils/constents/Image_constents.dart';
import 'package:flutter_application_1/view/Bottom_Nav_Bar/Bottom_Nav_Bar.dart';
import 'package:flutter_application_1/view/global_widgets/user_name_card.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColourConstents.mainblack,
      appBar: AppBar(
        backgroundColor: ColourConstents.mainblack,
        centerTitle: true,
        title: Image.asset(height: 37.2, ImageConstents.LOGO_PNG),
        actions: [
          Icon(
            Icons.edit,
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          shrinkWrap: true,
          itemCount: DummyDb.UserList.length + 1,
          itemBuilder: (context, index) {
            if (index < DummyDb.UserList.length) {
              return UserNameCard(
                oncardtap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ));
                },
                imagepath: DummyDb.UserList[index]["image path"]!,
                Name: DummyDb.UserList[index]["name"]!,
                height: null,
                width: null,
              );
            } else {
              return InkWell(
                  onTap: () {
                    DummyDb.UserList.add({
                      "image path": ImageConstents.USER1_PNG,
                      "name": "emelano"
                    });
                    setState(() {});
                  },
                  child: Column(
                    children: [
                      Image.asset(ImageConstents.BUTTON_PNG),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add profile",
                        style: TextStyle(
                            color: ColourConstents.mainwhite, fontSize: 13.5),
                      )
                    ],
                  ));
            }
          },
        ),
      ),
    );
  }
}

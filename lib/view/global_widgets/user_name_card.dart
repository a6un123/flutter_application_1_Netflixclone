import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.imagepath,
      required this.Name,
      this.oncardtap,
       this.height,
      this.width});
  final String imagepath;
  final String Name;
  final void Function()? oncardtap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncardtap,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(imagepath,height: height,width: width,),
            Text(
              Name,
              style: TextStyle(color: Colors.white, fontSize: 13.25),
            ),
          ],
        ),
      ),
    );
  }
}

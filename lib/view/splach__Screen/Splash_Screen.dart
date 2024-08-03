import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constents/Image_constents.dart';
import 'package:flutter_application_1/view/User_Name/user__Name.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        return Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return UserName();
          },
        ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstents.LOGO_PNG),
          ],
        )
      ),
    );
  }
}

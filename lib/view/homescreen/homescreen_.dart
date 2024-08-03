import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dummy_db.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';
import 'package:flutter_application_1/utils/constents/Image_constents.dart';
import 'package:flutter_application_1/view/homescreen/widgets/movie_builder_widget.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColourConstents.mainblack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _bulidMoviePoster(),
            SizedBox(
              height: 11,
            ),
            _buildPlaysection(),
            SizedBox(
              height: 40,
            ),
            MovieBuilderWidget(
              
              images: DummyDb.MoviePageList,
              Customwidth: 102,
              Titlle: "Perviews",
              isCircle: true,
            ),
            MovieBuilderWidget(
              HaveInfoCard: true,
              images: DummyDb.MoviePageList2,
              Titlle: "Continue Watching for emileano",
            ),
            MovieBuilderWidget(
              images: DummyDb.MoviePageList3,
              Titlle: "Popular on Netflix",
            ),
            MovieBuilderWidget(
                Titlle: "Trending Now", images: DummyDb.MoviePageList4),
            MovieBuilderWidget(
                Customheight: 251,
                Customwidth: 154.4,
                Titlle: "Malyalam Movies",
                images: DummyDb.MoviePageList5),
            MovieBuilderWidget(
                Titlle: "TV Series", images: DummyDb.MoviePageList6)
          ],
        ),
      ),
    );
  }

  Widget _buildPlaysection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: ColourConstents.mainwhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style:
                  TextStyle(color: ColourConstents.mainwhite, fontSize: 14.5),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffC4C4C4)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: ColourConstents.mainblack,
                size: 39,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Play",
                style: TextStyle(
                    color: ColourConstents.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: ColourConstents.mainwhite,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style:
                  TextStyle(color: ColourConstents.mainwhite, fontSize: 14.5),
            )
          ],
        ),
      ],
    );
  }

  Widget _bulidMoviePoster() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstents.BG_NETFLIX_PNG))),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ColourConstents.mainblack, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstents.ICON_LOGO_NETFLIX),
                    Text(
                      "Tv show",
                      style: TextStyle(
                          color: ColourConstents.mainwhite, fontSize: 18),
                    ),
                    Text("Movies",
                        style: TextStyle(
                            color: ColourConstents.mainwhite, fontSize: 18)),
                    Text("My list",
                        style: TextStyle(
                            color: ColourConstents.mainwhite, fontSize: 18))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstents.ICON_NETFLIX_PNG),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "# 2 IN NIGRIA TODAY",
                    style: TextStyle(
                        color: ColourConstents.mainwhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

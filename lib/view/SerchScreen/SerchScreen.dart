import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dummy_db.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';

class Serchscreen extends StatelessWidget {
  const Serchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColourConstents.mainblack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "serch for shows,movies,genre,e.t.c",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xff424242)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "TOP SEARCH",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.75,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Color(0xff424242),
                      leading: Container(
                        width: 146,
                        decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.cover,image: AssetImage(DummyDb.SerachList[index]["imagepath"]!))),
                      ),               
                      title: Text(
                        DummyDb.SerachList[index]["name"]!,
                        style: TextStyle(color: ColourConstents.mainwhite),
                      ),
                      trailing: Icon(Icons.play_circle_outline_rounded,color: ColourConstents.mainwhite,),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: DummyDb.SerachList.length),
            )
          ],
        ),
      ),
    );
  }
}

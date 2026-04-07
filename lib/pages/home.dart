import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color appBarColor = Color(0x00fff4f3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          "The Culinary Gallery",
          style: TextStyle(
            fontFamily: "PlusJakartaSans",
            fontSize: 24.0,
            color: Color(0xffa92f0e),
            fontWeight: FontWeight(700),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            print("I was clicked");
          },
          icon: Image.asset("assets/icons/hamburger.png"),
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xffFF7855),
                width: 2,
              ), // Red border
            ),
            child: IconButton(
              onPressed: () {},

              icon: ClipOval(
                child: Image.asset(
                  "assets/icons/user_profile.png",

                  // Ensures image fills the circle
                ),
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: Container(
          width: 342,
          child: Card(
            clipBehavior: Clip.hardEdge,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                40.0,
              ), // Adjust the value for more/less curve
            ),

            child: Column(
              children: <Widget>[
                Image.asset("assets/icons/Spaghetti_Carbonara.png"),

                Column(
                  children: <Widget>[
                    Row(
                      children:<Widget> [
                        Text(
                          "Spaghetti Carbonara",

                          style: TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 30,
                            fontWeight: FontWeight(800),
                            color: Color(0xff4E2121),
                          ),
                        ),

                        IconButton(
                          onPressed: () {},
                          iconSize: 20,
                          icon: Image.asset("assets/icon/heart_icon.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

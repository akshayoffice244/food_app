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
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 300,
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Spaghetti Carbonara",

                              style: TextStyle(
                                fontFamily: "PlusJakartaSans",
                                fontSize: 30,
                                fontWeight: FontWeight(800),
                                color: Color(0xff4E2121),
                              ),
                            ),
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},

                                icon: Image.asset(
                                  "assets/icons/hear_icon.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Text(
                        "Traditional Italian pasta dish made with fresh eggs, Pecorino Romano cheese, cured guanciale, and freshlycracked black pepper. A creamy masterpiece with no cream added.",
                        style: TextStyle(
                          color: Color(0xff834C4C),

                          fontSize: 18,
                          fontFamily: "LiberationSerif",
                          fontWeight: FontWeight(300),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(20, 8, 0, 0),
                  child: Row(
                    children: [
                      Chip(
                        backgroundColor: Color(0XFFE197FC),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        label: Text(
                          "Chef's Choice".toUpperCase(),
                          style: TextStyle(
                            color: Color(0xff530B6F),
                            fontFamily: "Liberation Sans",
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Chip(
                        backgroundColor: Color(0xffFFE1E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        label: Text(
                          "Italian Heritage".toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff834C4C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(width: 1)),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 24, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "TOTAL PRICE",
                            style: TextStyle(
                              color: Color(0xff834C4C),
                              fontSize: 12,
                              fontFamily: "Liberation Sans",
                              fontWeight: FontWeight(500),
                            ),
                          ),

                          Text(
                            "\$12.99",
                            style: TextStyle(
                              color: Color(0xffA92F0E),
                              fontSize: 24,
                              fontFamily: "Liberation Sans",
                              fontWeight: FontWeight(800),
                            ),
                          ),
                        ],
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),

                          backgroundColor: Color(0xffA92F0E),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.zero, // This removes the rounding
                          ),
                        ),
                        child: Text(
                          "Order Now",
                          style: TextStyle(
                            color: Color(0xffFFEFEC),
                            fontSize: 16,
                            fontFamily: "Liberation Sans",
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

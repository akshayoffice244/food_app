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
      backgroundColor: Color(0xffFFF4F3),
      appBar: AppBar(
        // toolbarHeight: 70,
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
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xffFF7855),
                width: 2,
              ), // Red border
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/icons/user_profile.png"),
            ),
          ),
        ],
      ),

      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Card(
                color: Colors.white,
                clipBehavior: Clip.hardEdge,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    40.0,
                  ), // Adjust the value for more/less curve
                ),

                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        Image.asset("assets/icons/Spaghetti_Carbonara.png"),
                        Positioned(
                          top: 4,
                          left: 16,
                          child: Chip(label: Text("FEATURED",
                            softWrap: true,
                            style: TextStyle(fontFamily: "Liberation Sans",
                            fontSize: 14,
                            color: Color(0xffFFEFEC),
                            fontWeight: FontWeight(500)),

                          ),
                            side: BorderSide.none,
                            backgroundColor: Color(0xffA92F0E),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999)),
                          )
                        ),
                        Positioned(
                            bottom: 8,
                            right: 16,
                            child: Chip(label: Text("\$12.99",
                              softWrap: true,
                              style: TextStyle(fontFamily: "Liberation Sans",
                                  fontSize: 18,
                                  color: Color(0xff85232A),
                                  fontWeight: FontWeight(700)),

                            ),
                              side: BorderSide.none,
                              backgroundColor: Color.fromRGBO(255, 195, 193, 0.9),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999)),
                            )
                        )
                      ],
                    ),

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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              width: 278,
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
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(20, 8, 0, 0),
                      child: Row(
                        children: [
                          Chip(
                            side: BorderSide.none,
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
                            side: BorderSide.none,
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
                      margin: EdgeInsets.fromLTRB(32, 24, 32, 0),
                      child: Divider(thickness: 1, color: Color(0x339C9A33)),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 32),

                      // margin: EdgeInsets.fromLTRB(20, 24, 20, 0),
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
                                borderRadius: BorderRadius
                                    .zero, // This removes the rounding
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
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Card(
                  color: Color(0xffFFEDEC),
                  shadowColor: Color(0x00000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    width: 163,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Image.asset(
                          "assets/icons/time.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(height: 2),
                        Text(
                          "PREP TIME",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Liberation Sans",
                            fontWeight: FontWeight(500),
                            color: Color(0xff834C4C),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "15-20 MINS",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Liberation Sans",
                            fontWeight: FontWeight(700),
                            color: Color(0xff834C4C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Card(
                  color: Color(0xffFFEDEC),
                  shadowColor: Color(0x00000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    width: 163,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Image.asset(
                          "assets/icons/fire.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(height: 2),
                        Text(
                          "CALORIES",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Liberation Sans",
                            fontWeight: FontWeight(500),
                            color: Color(0xff834C4C),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "640 kcal",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Liberation Sans",
                            fontWeight: FontWeight(700),
                            color: Color(0xff834C4C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

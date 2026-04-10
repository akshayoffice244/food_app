import 'package:flutter/material.dart';

import 'artisanal_selections.dart';

class ArtisanalPlates extends StatefulWidget {
  const ArtisanalPlates({super.key});

  @override
  State<ArtisanalPlates> createState() => _ArtisanalPlatesState();
}

class _ArtisanalPlatesState extends State<ArtisanalPlates> {
  List<Food> food_list = [
    Food(
      name: "Garden Bowl",
      description: "Fresh greens & quinoa",
      price: 14.5,
      image: "green_bowl.png",
    ),
    Food(
      name: "Greek Lyric",
      description: "Olives & feta cheese",
      price: 12.0,
      image: "greek_lyric.png",
    ),

    Food(
      name: "Basil Pesto",
      description: "Handmade linguine",
      price: 18.90,
      image: "basil_pesto.png",
    ),

    Food(
      name: "Rustic Fig",
      description: "Stone-fired crust",
      price: 16.0,
      image: "rustic_fig.png",
    ),

    Food(
      name: "Pink Fillet",
      description: "Wild caught salmon",
      price: 22.50,
      image: "rustic_fig.png",
    ),

    Food(
      name: "Morning Hue",
      description: "Poached farm egg",
      price: 11.50,
      image: "morning_hue.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 244, 243, 1),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,

        centerTitle: true,
        // bottomOpacity: 1,
        backgroundColor: Color.fromRGBO(255, 244, 243, 0.8),
        shadowColor: Color.fromRGBO(78, 33, 33, 0.06),
        title: Text(
          "Culinary Gallery",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "PlusJakartaSans",
            fontSize: 24.0,
            color: Color(0xff4E2121),
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
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0), // Red border

            child: Image.asset("assets/icons/shop.png", width: 16, height: 20),
          ),
        ],
      ),
      body: Container(
        color: Color.fromRGBO(255, 244, 243, 1),
        margin: EdgeInsetsGeometry.fromLTRB(20, 0, 20, 0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 342,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Featured Selection".toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "LiberationSerif",
                      fontSize: 16,
                      fontWeight: FontWeight(500),
                      letterSpacing: 0.8,
                      color: Color(0xffA92F0E),
                    ),
                  ),

                  Text(
                    "Artisanal Plates For Your Table",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "PlusJakartaSans",
                      fontSize: 36,
                      fontWeight: FontWeight(800),

                      color: Color(0xff4E2121),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: food_list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 285.5,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 0,

                    shape: RoundedSuperellipseBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Image.asset(
                            "assets/images/${food_list[index].image}",
                            width: 139,
                            height: 155,
                          ),
                        ),

                       Container(
                         margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Expanded(

                               child: Column(

                                 children: [
                                   Row(
                                     children: [
                                       Text(
                                         food_list[index].name!,


                                         style: TextStyle(
                                           color: Color(0xff4E2121),
                                           fontSize: 18,
                                           fontWeight: FontWeight(700),
                                           fontFamily: "PlusJakartaSans",
                                         ),
                                       ),
                                     ],
                                   ),



                                   Row(
                                     children: [
                                       Text(
                                         food_list[index].description!,
                                         textAlign: TextAlign.left,
                                         style: TextStyle(
                                           color: Color(0xff4E2121),
                                           fontSize: 14,
                                           fontWeight: FontWeight(400),
                                           fontFamily: "Be Vietnam Pro",
                                         ),
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),


                        Container(
                          margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Chip(

                                label: Text("\$${food_list[index].price}"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9999),
                                ),
                                side: BorderSide.none,
                                backgroundColor: Color(0xffFFC3C1),
                                labelStyle: TextStyle(
                                  fontFamily: "Be Vietnam Pro",
                                  fontSize: 14,
                                  fontWeight: FontWeight(600),
                                  color: Color(0xff85232A),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icons/add.png",
                                  width: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

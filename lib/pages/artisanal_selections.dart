import 'package:flutter/material.dart';

class ArtisanalSelections extends StatefulWidget {
  const ArtisanalSelections({super.key});

  @override
  State<ArtisanalSelections> createState() => _ArtisanalSelectionsState();
}

class _ArtisanalSelectionsState extends State<ArtisanalSelections> {
  List<Food> food_list = [
    Food(
      name: "Summer Harvest",
      description: "Fresh garden greens with balsamic gla…",
      price: 18.0,
      image: "summer_harvest.png",
    ),

    Food(
      name: "Cloud Pancakes",
      description: "Fluffy buttermilk base topped with…",
      price: 14.50,
      image: "cloud_pancakes.png",
    ),

    Food(
      name: "Velvet Tart",
      description: "Rich cream cheese infusion with a…",
      price: 12.00,
      image: "velvet_tart.png",
    ),

    Food(
      name: "Signature Wagyu",
      description: "Premium beef patty with smoked…",
      price: 24.00,
      image: "signature_wagyu.png",
    ),

    Food(
      name: "Oak Smoked Ribs",
      description: "Falling-off-the-bone tender pork with…",
      price: 29.00,
      image: "oak_smoked_ribs.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 244, 243, 1),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 12,
        centerTitle: true,
        // bottomOpacity: 1,
        backgroundColor: Color.fromRGBO(255, 244, 243, 0.8),
        shadowColor: Color.fromRGBO(78, 33, 33, 0.06),
        title: Text(

          "Culinary Gallery",
          textAlign:TextAlign.center,
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
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xffFF7855),
                width: 2,
              ), // Red border
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/icons/chef_icon.png"),
            ),
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
                    "The Curator's Choice".toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "LiberationSerif",
                      fontSize: 12,
                      fontWeight: FontWeight(500),
                      letterSpacing: 1.6,
                      color: Color(0xffA92F0E),
                    ),
                  ),

                  Text(
                    "Artisanal Selections",
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
              child: ListView.builder(
                itemCount: food_list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    borderOnForeground: true,
                    elevation: 0,
                    color: Colors.white,

                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color.fromRGBO(223, 156, 154, 0.1),width: 1),
                      borderRadius: BorderRadiusGeometry.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),

                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/${food_list[index].image}",
                            width: 96,
                            height: 96,
                          ),
                          Container(
                            width: 120,
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  food_list[index].name.toString(),
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans",
                                    fontSize: 18,
                                    fontWeight: FontWeight(700),

                                    color: Color(0xff4E2121),
                                  ),
                                ),

                                Text(
                                  food_list[index].description.toString(),

                                  style: TextStyle(
                                    fontFamily: "LiberationSerif",
                                    fontSize: 14,
                                    fontWeight: FontWeight(700),

                                    color: Color(0xff834C4C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: [
                                Text(
                                  "\$${food_list[index].price.toString()}",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans",
                                    fontSize: 16,
                                    fontWeight: FontWeight(700),

                                    color: Color(0xffA92F0E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(78, 33, 33, 0.06),
              spreadRadius: 0,
              blurRadius: 32,
              //offset: Offset(0, 5), // moves shadow 5 pixels down
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: NavigationBar(
          surfaceTintColor: Colors.transparent,
          elevation: 12,
          shadowColor: Color.fromRGBO(78, 33, 33, 0.06),
          selectedIndex: 1,
          backgroundColor: Color.fromRGBO(255, 244, 243, 0.8),
          destinations: [
            NavigationDestination(
              icon: Image.asset(
                "assets/icons/gallery.png",
                width: 18,
                height: 18,
              ),
              label: "GALLERY",
            ),
            NavigationDestination(
              icon: Image.asset("assets/icons/menu.png", width: 18, height: 18),
              label: "MENU",
            ),
            NavigationDestination(
              icon: Image.asset("assets/icons/cart.png", width: 18, height: 18),
              label: "CART",
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/icons/profile.png",
                width: 18,
                height: 18,
              ),
              label: "PROFILE",
            ),
          ],
        ),
      ),*/
    );
  }
}

class Food {
  String? name;
  String? description;
  double? price;
  String? image;
  Food({this.name, this.description, this.price, this.image});
}

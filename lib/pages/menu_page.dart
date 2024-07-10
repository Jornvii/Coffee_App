import 'package:flutter/material.dart';
import 'package:flutter_shoping_app/models/product_model.dart';
import 'package:flutter_shoping_app/pages/detail_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/category_model.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedIndex = 0;

  //lsit of catgeory items selected products
  List<List<Product>> selectedCategory = [
    coffeeProducts,
    teaProducts,
    FruitProducts
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: RawMaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              constraints: const BoxConstraints(minWidth: 10),
              fillColor: Colors.amber,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              onPressed: () {},
              child: SvgPicture.asset(
                "assets/images/menu.svg",
                width: 40,
              ),
            ),
          )),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "BMF Cafe",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)),
                  contentPadding: const EdgeInsets.all(15),
                  filled: true,
                  hintText: "Search",
                  fillColor: Colors.grey.shade200,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: categoryRow(),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "แนะนำ",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                ),
                Spacer(),
                Text(
                  "view all",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.amber),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double containerWidth = (constraints.maxWidth - 25) / 2;
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Adjusted to horizontal
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      selectedCategory[selectedIndex].length,
                      (index) {
                        final product = selectedCategory[selectedIndex][index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailScreen(product: product)));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: containerWidth*1.4,
                              height:
                                  containerWidth*1.6, // Make the height the same as width for a square
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(product.image),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: -5,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(136, 186, 155, 94),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            product.name,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${product.price}",
                                            style: const TextStyle(
                                              color: Colors.amber,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),

     //   carousel_slider

        ],
        
      ),
    );
  }

  SizedBox categoryRow() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(
              left: index == 0 ? 20 : 0,
              right: 20,
            ),
            margin: EdgeInsets.only(top: 5, bottom: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: selectedIndex == index
                      ? Colors.amber
                      : Colors.grey.shade200,
                ),

                onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
                child: Text(
                  categoriesList[index].title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                )),
          );
        },
      ),
    );
  }
}

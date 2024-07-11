import 'package:flutter/material.dart';

import '../models/product_model.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: ElevatedButton(
      //   style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.amber,
      //       shape:
      //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
      //   onPressed: () {},
      //   child: const Text(
      //     "Order Now",
      //     style: TextStyle(
      //         fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [
                Center(
                  child: Container(
                    width: 415,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(97, 88, 87, 83).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.product.image),
                      ),
                    ),
                 
                  ),
                ),
                ArrowBack(context),
                Padding(
                  padding: const EdgeInsets.only(
                      top:
                          420.0), // Adjust padding to position content below the image
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.product.name,
                                    style: const TextStyle(
                                        fontSize: 36, fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    '${widget.product.price}',
                                    style: const TextStyle(
                                        fontSize: 25, fontWeight: FontWeight.w900,color:Color.fromARGB(255, 85, 66, 8) ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                widget.product.description,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        onPressed: () {},
        child: const Text(
          "Order Now",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        ),
      ),
          ],
        ),
      ),
    );
  }

  Padding ArrowBack(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Positioned(
        top: 16,
        left: 16,
        child: RawMaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          constraints: const BoxConstraints(minWidth: 10, maxWidth: 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.amber,
          padding: const EdgeInsets.all(12),
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

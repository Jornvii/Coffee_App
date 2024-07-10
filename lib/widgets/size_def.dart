import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double horizontalSize = 0;
  static double verticalSize = 0;

  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightSizeMultiplier = 0;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    horizontalSize = screenWidth / 100;
    verticalSize = screenHeight / 100;

    textMultiplier = verticalSize;
    imageSizeMultiplier = horizontalSize;
    heightSizeMultiplier = verticalSize;
  }
}



// class SizeConfig{
//   static double screenWidth=0;
//   static double screenHeight=0;
//   static double horizontalSize=0;
//   static double verticalSize=0;

//   static double textMultiplier=0;
//   static double imageSizeMultiplier=0;
//   static double heightSizeMultiplier=0;

//   void init (BuildContext context){
//     screenWidth=MediaQuery.of(context).size.width;
//     screenHeight=MediaQuery.of(context).size.height;
//     horizontalSize=screenWidth/100;
//     verticalSize=screenHeight/100;

//     textMultiplier=horizontalSize/100;
//     imageSizeMultiplier=horizontalSize/100;
//     heightSizeMultiplier=verticalSize/100;
//   }
// }
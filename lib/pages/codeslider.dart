import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CodeSlider extends StatefulWidget {
  @override
  _CodeSliderState createState() => _CodeSliderState();
}

class _CodeSliderState extends State<CodeSlider> {
  int _currentSlide = 0;
  bool _isButtonSelected = false;

  List<String> images = [
    'assets/images/espresso.png',
    'assets/images/espresso.png',
    'assets/images/espresso.png',
  ];

  void _selectPromoCode() {
    setState(() {
      _isButtonSelected = !_isButtonSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentSlide = index;
                });
              },
            ),
            items: images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            'Current Slide: $_currentSlide',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _selectPromoCode,
            child: Text(_isButtonSelected ? 'Selected' : 'Select Promo Code'),
          ),
        ],
      ),
    );
  }
}

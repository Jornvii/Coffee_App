import 'package:flutter/material.dart';

class PromotionContainer extends StatefulWidget {
  @override
  _PromotionContainerState createState() => _PromotionContainerState();
}

class _PromotionContainerState extends State<PromotionContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/espresso.png'), // Replace with your image asset
          SizedBox(height: 16.0),
          Text(
            isSelected ? 'Selected' : 'Promotion',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          TextButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text(isSelected ? 'Unselect' : 'Select'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Promotion Selector'),
      ),
      body: PromotionContainer(),
    ),
  ));
}

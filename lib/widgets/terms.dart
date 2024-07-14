import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'ข้อกำหนดและเงื่อนไข',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. การใช้งานแอปพลิเคชัน',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'การใช้งานแอปพลิเคชันนี้จะต้องเป็นไปตามข้อกำหนดและเงื่อนไขที่ระบุไว้ในเอกสารนี้.',
            ),
            SizedBox(height: 16),
            Text(
              '2. การสั่งซื้อ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'การสั่งซื้อสินค้าจะต้องทำผ่านแอปพลิเคชันและเป็นไปตามขั้นตอนที่ระบุไว้.',
            ),
            SizedBox(height: 16),
            Text(
              '3. การชำระเงิน',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'การชำระเงินจะต้องทำผ่านช่องทางที่กำหนดและเป็นไปตามเงื่อนไขที่ระบุไว้.',
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}

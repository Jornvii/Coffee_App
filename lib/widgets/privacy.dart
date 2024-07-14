import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'นโยบายความเป็นส่วนตัว',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. การเก็บข้อมูลส่วนบุคคล',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'เราเก็บรวบรวมข้อมูลส่วนบุคคลเพื่อให้บริการที่ดีขึ้นและประสบการณ์การใช้งานที่ดีกับผู้ใช้.',
            ),
            SizedBox(height: 16),
            Text(
              '2. การใช้ข้อมูลส่วนบุคคล',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'เราใช้ข้อมูลส่วนบุคคลเพื่อวัตถุประสงค์ในการดำเนินการสั่งซื้อและปรับปรุงการบริการ.',
            ),
            SizedBox(height: 16),
            Text(
              '3. การเปิดเผยข้อมูลส่วนบุคคล',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'เราไม่เปิดเผยข้อมูลส่วนบุคคลให้แก่บุคคลที่สาม ยกเว้นในกรณีที่กฎหมายกำหนด.',
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}

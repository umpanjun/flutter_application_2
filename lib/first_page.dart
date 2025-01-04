import 'package:flutter/material.dart';
import 'answer1.dart';
import 'answer2.dart';
import 'answer3.dart';
import 'answer4.dart';


class ans_navi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyAnswerPage(),
    );
  }
}

class MyAnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Answer Centre 630710664'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ปุ่มสำหรับ Answer1
            AnswerButton(
              text: 'Answer 1',
              navigateTo: Answer1Page(),
            ),
            // ปุ่มสำหรับ Answer2
            AnswerButton(
              text: 'Answer 2',
              navigateTo: Answer2Page(),
            ),
            // ปุ่มสำหรับ Answer3
            AnswerButton(
              text: 'Answer 3',
              navigateTo: Answer3Page(),
            ),
            // ปุ่มสำหรับ Answer4
            AnswerButton(
              text: 'Answer 4',
              navigateTo: Answer4Page(),
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  final String text; // ข้อความบนปุ่ม
  final Widget navigateTo; // หน้าที่จะไปเมื่อกดปุ่ม

  const AnswerButton({
    required this.text,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // ระยะห่างระหว่างปุ่ม
      child: ElevatedButton(
        onPressed: () {
          // การนำทางไปยังหน้าใหม่
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigateTo),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink[200], // สีพื้นหลังปุ่ม
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // ทำให้ปุ่มมีมุมโค้งมน
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16), // ขนาดตัวอักษรบนปุ่ม
        ),
      ),
    );
  }
}

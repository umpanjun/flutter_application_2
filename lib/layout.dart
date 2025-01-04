import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Grid Layout'),
          centerTitle: true, // จัดข้อความไว้ตรงกลาง
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20), // เพิ่มระยะห่างด้านบน
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // จัดให้เริ่มจากด้านบน
            children: [
              // แถวที่ 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 20), // เว้นระยะห่าง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 20), // เว้นระยะห่าง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 20), // ระยะห่างระหว่างแถว
              // แถวที่ 2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 20), // เว้นระยะห่าง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                  const SizedBox(width: 20), // เว้นระยะห่าง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

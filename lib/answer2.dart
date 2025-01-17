import 'package:flutter/material.dart';

class Answer2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Social Media Post'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // แถวแรก: รูปโปรไฟล์ + ชื่อ + เวลาโพสต์
              Row(
                children: [
                  // รูปโปรไฟล์
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  // ชื่อผู้ใช้ และเวลาโพสต์
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '5 minutes ago',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // แถวที่สอง: เนื้อหาโพสต์
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 16),
              // แถวที่สาม: ปุ่ม Like, Comment, Share
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Like'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      foregroundColor: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Comment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      foregroundColor: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Share'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      foregroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // ปุ่มกลับไปหน้าหลัก
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // กลับไปหน้า MyAnswerPage
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12), // เพิ่ม padding
                  ),
                  child: const Text(
                    'กลับไปหน้าหลัก',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

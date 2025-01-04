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
          title: const Text('Product Layout'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            Container(
              width: double.infinity,
              color: Colors.grey[300],
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Category: Electronics',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            // Product Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // แสดง 2 คอลัมน์
                mainAxisSpacing: 25, // ระยะห่างแนวตั้ง
                crossAxisSpacing: 16, // ระยะห่างแนวนอน
                padding: const EdgeInsets.all(16.0),
                children: [
                  // สินค้า 1: MacBook Pro 16"
                  ProductCard(
                    imageUrl:
                        'assets/images/macbook_pro.jpg', // รูปภาพจาก Asset
                    name: 'MacBook Pro 16"',
                    price: '69,900 THB',
                  ),

                  // สินค้า 2
                  ProductCard(
                    imageUrl: 'assets/images/smartphone.jpg',
                    name: 'Smartphone',
                    price: '78,699 THB',
                  ),
                  // สินค้า 3
                  ProductCard(
                    imageUrl: 'assets/images/tablet.jpg',
                    name: 'Tablet',
                    price: '14,499 THB',
                  ),
                  // สินค้า 4
                  ProductCard(
                    imageUrl: 'assets/images/camera.jpg',
                    name: 'Camera',
                    price: '69,299 THB',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // ปรับขนาดการ์ดให้อัตโนมัติ
      children: [
        Image.asset(
          imageUrl,
          width: 100, // ลดขนาดรูปภาพ
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 1, // จำกัดบรรทัด
          overflow: TextOverflow.ellipsis, // แสดง "..." หากข้อความยาวเกิน
        ),
        Text(
          price,
          style: const TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}

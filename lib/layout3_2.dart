import 'package:flutter/material.dart';

class layout3 extends StatelessWidget {
  const layout3({super.key});

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
                mainAxisSpacing: 16, // ระยะห่างแนวตั้ง
                crossAxisSpacing: 16, // ระยะห่างแนวนอน
                padding: const EdgeInsets.all(16.0),
                children: [
                  // สินค้า 1: MacBook Pro 16"
                  ProductCard(
                    imageUrl:
                        'assets/images/macbook_pro.jpg', // รูปภาพจาก Asset
                    name: 'MacBook Pro 16"',
                    price: '99,900 THB',
                  ),

                  // สินค้า 2
                  ProductCard(
                    imageUrl: 'assets/images/smartphone.jpg',
                    name: 'Smartphone',
                    price: '699 THB',
                  ),
                  // สินค้า 3
                  ProductCard(
                    imageUrl: 'assets/images/tablet.jpg',
                    name: 'Tablet',
                    price: '499 THB',
                  ),
                  // สินค้า 4
                  ProductCard(
                    imageUrl: 'assets/images/camera.jpg',
                    name: 'Camera',
                    price: '299 THB',
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
      children: [
        // รูปภาพสินค้า
        Image.asset(
          imageUrl,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        // ชื่อสินค้า
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        // ราคา
        Text(
          price,
          style: const TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}
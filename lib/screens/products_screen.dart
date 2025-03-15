import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildProductCard(
            'Baby Diapers',
            'assets/images/diapers.jpg',
            'High-quality, absorbent diapers for your little one.',
          ),
          _buildProductCard(
            'Baby Wipes',
            'assets/images/wipes.jpg',
            'Gentle and effective wipes for quick cleanups.',
          ),
          _buildProductCard(
            'Nursing Bra',
            'assets/images/nursing_bra.jpg',
            'Comfortable and supportive bra for nursing mothers.',
          ),
          _buildProductCard(
            'Baby Bottle',
            'assets/images/baby_bottle.jpg',
            'Safe and easy-to-use bottle for feeding.',
          ),
          _buildProductCard(
            'Stroller',
            'assets/images/stroller.jpg',
            'Convenient and sturdy stroller for on-the-go.',
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to dummy shop
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DummyShopScreen(),
                ),
              );
            },
            child: Text('Go to Shop'),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String title, String imagePath, String description) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class DummyShopScreen extends StatelessWidget {
  const DummyShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy Shop'),
      ),
      body: Center(
        child: Text('This is a dummy shop page!'),
      ),
    );
  }
}
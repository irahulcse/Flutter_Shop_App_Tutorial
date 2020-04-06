import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title:
          'Redmi 8A Dual (Sea Blue, 2GB RAM, 32GB Storage) – Dual Cameras & 5,000 mAH Battery ',
      description: '13+2MP dual rear AI camera with PDAF | 8MP front camera ',
      price: 99999.99,
      imageUrl: 'https://i.ytimg.com/vi/GbX_5u3TA-M/maxresdefault.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Apple iPhone 11 (64GB) - (Product) RED ',
      description: '6.1-inch Liquid Retina HD LCD display ',
      price: 59875.99,
      imageUrl: 'http://cdn.mos.cms.futurecdn.net/365c03a7a21f5a736b2c783b3b70f15d-480-80.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Honor 9X (Sapphire Blue, 4+128GB Storage)-Pop up Front Camera & 48M Triple Rear Camera ',
      description: '48MP + 8MP + 2MP rear camera and 16MP front facing camera ',
      price: 62819.99,
      imageUrl:
          'https://i.ytimg.com/vi/xX31xYRl-II/maxresdefault.jpg',
    ),
    Product(
      id: 'p4',
      title: 'OPPO Reno3 Pro (Auroral Blue, 8GB RAM, 128GB Storage)',
      description: '64MP+13MP+8MP+2MP rear quad camera with 20x digital zoom, ultra clear 108MP image, ultra dark mode, macroshot (3 cm), ultra-wide angle, dual lens bokeh | 44MP+2MP dual punch hole front camera ',
      price: 57849.99,
      imageUrl:
          'https://i.ytimg.com/vi/97cDu5Le0eM/maxresdefault.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

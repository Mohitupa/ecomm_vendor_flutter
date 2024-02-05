import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  // final String title;
  // final String brand;
  final String image;
  final double price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    // required this.title,
    // required this.brand,
    required this.image,
    required this.price,
    this.quantity = 0,
  });
}

class ProductListingWidget extends StatefulWidget {
  const ProductListingWidget({Key? key}) : super(key: key);

  @override
  _ProductListingWidgetState createState() => _ProductListingWidgetState();
}

class _ProductListingWidgetState extends State<ProductListingWidget> {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearchStarted = false;

  List<Product> searchedProducts = [];
  final List<Product> products = [
    Product(
        id: 1,
        name: 'Champion',
        image:
            'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        price: 55.5),
    Product(
        id: 2,
        name: 'Stark',
        image:
            'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1624&q=80',
        price: 65.5),
    Product(
        id: 3,
        name: 'Coloury',
        image:
            'https://images.unsplash.com/photo-1604671801908-6f0c6a092c05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 75.5),
    Product(
        id: 4,
        name: 'Pinky',
        image:
            'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 87.5),
    Product(
        id: 5,
        name: 'Power',
        image:
            'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1179&q=80',
        price: 67.5),
    Product(
        id: 6,
        name: 'Classic',
        image:
            'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 87.5),
    Product(
        id: 7,
        name: 'Monk',
        image:
            'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
        price: 50.5),
    Product(
        id: 8,
        name: 'Piece',
        image:
            'https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 99.5),
    Product(
        id: 9,
        name: 'Baby',
        image:
            'https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1112&q=80',
        price: 87.5),
    Product(
        id: 10,
        name: 'Grown',
        image:
            'https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 144.5),
    Product(
        id: 11,
        name: 'Champion',
        image:
            'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        price: 55.5),
    Product(
        id: 12,
        name: 'Stark',
        image:
            'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1624&q=80',
        price: 65.5),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Row(
            children: [
              Text(
                "Most Popular",
                style: TextStyle(
                    color: Color.fromARGB(255, 6, 20, 92),
                    fontWeight: FontWeight.w800,
                    fontSize: 14),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward,
                size: 16,
                color: Color.fromARGB(255, 6, 20, 92),
              )
            ],
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                products.length,
                (index) => buildProductCard(products[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(Product product) {
    return Card(
      child: Column(
        children: [
          Image.network(
            product.image,
            height: 120.0,
            width: 160.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            product.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('\$${product.price}'),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  // final String title;
  // final String brand;
  final String image;
  final double price;
  int quantity;

  Category({
    required this.id,
    required this.name,
    // required this.title,
    // required this.brand,
    required this.image,
    required this.price,
    this.quantity = 0,
  });
}

class CategoryListingWidget extends StatefulWidget {
  const CategoryListingWidget({Key? key}) : super(key: key);

  @override
  _CategoryListingWidgetState createState() => _CategoryListingWidgetState();
}

class _CategoryListingWidgetState extends State<CategoryListingWidget> {
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

  List<Category> searchedCategorys = [];
  final List<Category> Categorys = [
    Category(
        id: 2,
        name: 'Stark',
        image:
        'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1624&q=80',
        price: 65.5),
    Category(
        id: 3,
        name: 'Coloury',
        image:
        'https://images.unsplash.com/photo-1604671801908-6f0c6a092c05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 75.5),
    Category(
        id: 4,
        name: 'Pinky',
        image:
        'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 87.5),
    Category(
        id: 5,
        name: 'Power',
        image:
        'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1179&q=80',
        price: 67.5),
    Category(
        id: 7,
        name: 'Monk',
        image:
        'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
        price: 50.5),
    Category(
        id: 8,
        name: 'Piece',
        image:
        'https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 99.5),
    Category(
        id: 9,
        name: 'Baby',
        image:
        'https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1112&q=80',
        price: 87.5),
    Category(
        id: 10,
        name: 'Grown',
        image:
        'https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 144.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 20),
          const Row(
            children: [
              Text("Categories", style: TextStyle(
                color: Color.fromARGB(255, 6, 20, 92),
                fontWeight: FontWeight.w800,
                  fontSize: 14
              ),),
              Spacer(),
              Icon(Icons.arrow_forward,size: 16,color: Color.fromARGB(255, 6, 20, 92),)
            ],
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                Categorys.length,
                    (index) => buildCategoryCard(Categorys[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryCard(Category Category) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 6, 20, 92).withOpacity(0.3),
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(color: const  Color.fromARGB(255, 6, 20, 92),)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(Category.image),
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            Category.name.toUpperCase(),
            style: const TextStyle(
              color: Color.fromARGB(255, 6, 20, 92),
              fontSize: 10,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
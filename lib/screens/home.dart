import 'package:ecom_bg_srs/screens/category/home-category.dart';
import 'package:ecom_bg_srs/screens/product/products.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../common/search-field.dart';
import '../common/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var selectedTab = 0;

  void onBottomTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (selectedTab == 1) {
      // content = ProductPage();
    }
    if (selectedTab == 2) {
      // content = NewArrivalPage();
    }

    if (selectedTab == 3) {
      // content = MyProfilePage();
    }
    return Column(
      children: [
        SearchField(),
        CarouselSliderPage(),
        CategoryListingWidget(),
        ProductListingWidget(),
      ],
    );
  }
}

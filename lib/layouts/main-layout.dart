import 'package:ecom_bg_srs/common/footer.dart';
import 'package:flutter/material.dart';

import '../common/header.dart';
import '../common/side-manu.dart';
import '../screens/home.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(
          titleSpacing: 0,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 6, 20, 92),
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          title: Header(),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/back.png'),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: HomePage(),
          ),
        ),
        bottomNavigationBar: FooterHomePage(),
      ),
    );
  }
}

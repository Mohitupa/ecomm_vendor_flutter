import 'package:ecom_bg_srs/common/header.dart';
import 'package:ecom_bg_srs/common/side-manu.dart';
import 'package:ecom_bg_srs/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        // title: Transform.translate(
        //   offset: Offset(-30.0, 0.0),
        //   child: Header(),
        // ),
        title:  Header(),
      ),
      body: const HomePage(),
    );
  }
}

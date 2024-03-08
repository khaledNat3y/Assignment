import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
class Home extends StatefulWidget {
  static const String routeName = "home";

   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelected = false;
  bool isSelected2 = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Container(),
      ),
    );
  }

}

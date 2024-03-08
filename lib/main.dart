import 'package:flutter/material.dart';
import 'package:study_project/ui/design_one/home_for_design_one.dart';
import 'package:study_project/ui/design_three/home_for_design_three.dart';
import 'package:study_project/ui/design_two/home_for_design_two.dart';
import 'package:study_project/ui/home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.routeName: (_) => Home(),
        HomeForDesignOne.routeName: (_) => HomeForDesignOne(),
        HomeForDesignTwo.routeName: (_) => HomeForDesignTwo(),
        HomeForDesignThree.routeName: (_) => HomeForDesignThree(),
      },
      initialRoute: HomeForDesignOne.routeName,
    );
  }
}

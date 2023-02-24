import 'package:clima/screen/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screen/city_screen.dart';
import 'package:clima/screen/location_screen.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:LocationScreen(locationwether: 'london',),
    );
  }
}




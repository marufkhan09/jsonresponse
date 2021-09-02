import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:json_demo/models/4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

Future<String> _loadDate() async {
  return await rootBundle.loadString('assets/4.json');
}

class _HomeState extends State<Home> {
  // Future loadData() async {
  //   String jsonString = await _loadDate();
  //   final jsonResponse = json.decode(jsonString);
  //   One one = new One.fromJson(jsonResponse);
  //
  //   print('${one.name} - ${one.id} - ${one.gender}');
  // }

  // Future loadData() async {
  //   String jsonString = await _loadDate();
  //   final jsonResponse = json.decode(jsonString);
  //   Two two = new Two.fromJson(jsonResponse);
  //   for (int i = 0; i < two.classes.length; i++) {
  //     print(two.classes[i]);
  //   }
  // }

  Future loadData() async {
    String jsonString = await _loadDate();
    final jsonResponse = json.decode(jsonString);
    Four four = new Four.fromJson(jsonResponse);
    for (int i = 0; i < four.passenger.length; i++) {
      print(four.passenger[i].checked_bags);
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

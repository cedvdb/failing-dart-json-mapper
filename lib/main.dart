import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:flutter/material.dart';
import 'main.mapper.g.dart';

void main() {
  initializeJsonMapper();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        child: Text(JsonMapper.fromMap<Test>({}).toString()),
      ),
    );
  }
}

@jsonSerializable
class Test {
  final String a;

  Test({
    this.a,
  });
}

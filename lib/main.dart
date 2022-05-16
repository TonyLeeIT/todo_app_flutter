import 'package:flutter/material.dart';
import './screens/list_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "ToDo App",
      debugShowCheckedModeBanner: false,
      home: ListItem(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_list/models/item.dart';

class ListItemDetail extends StatelessWidget {
  List<Item> listItem = [];

  ListItemDetail({Key? key, required this.listItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Save Suggestion",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          for (int i = 0; i < listItem.length; i++)
            Container(
              alignment: Alignment.centerLeft,
              height: 60,
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                listItem[i].value,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_list/models/item.dart';
import 'package:todo_list/screens/List_item_detail.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<Item> listSelected = [];

  final _listItem = [
    Item(value: "Iphone 5"),
    Item(value: "Iphone 5s"),
    Item(value: "Iphone 6"),
    Item(value: "Iphone 6s"),
    Item(value: "Iphone 7"),
    Item(value: "Iphone 7s"),
    Item(value: "Iphone 8"),
    Item(value: "Iphone 8s"),
    Item(value: "Iphone X"),
    Item(value: "Iphone Xs"),
    Item(value: "Iphone Xs Max"),
    Item(value: "Iphone 11"),
    Item(value: "Iphone 11 Pro"),
    Item(value: "Iphone 11 Pro Max"),
    Item(value: "Iphone 12"),
    Item(value: "Iphone 12 Pro"),
    Item(value: "Iphone 12 Pro Max"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Startup Name Generator",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ListItemDetail(listItem: listSelected)),
                );
              },
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: 700,
        child: ListView(
          children: [..._listItem.map(showItem).toList()],
        ),
      ),
    );
  }

  Widget showItem(Item item) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black12, width: 0.1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.value,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          InkWell(
            onTap: () {
              setState(() {
                item.isSelected = !item.isSelected;
              });

              item.isSelected
                  ? listSelected.add(item)
                  : listSelected.remove(item);
            },
            child: Icon(
              (item.isSelected)
                  ? Icons.favorite
                  : Icons.favorite_border_rounded,
              color: (item.isSelected) ? Colors.pink : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TitleAp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          onHover: (_) {},
          hoverColor: Colors.white,
          child: Container(
            padding: EdgeInsets.all(7),
            child: Center(
                child: FittedBox(
                    child: Text(
              'Home',
              style: TextStyle(fontSize: 16),
            ))),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            height: 35,
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(14.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {},
            hoverColor: Colors.black26,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              child: Center(
                child: FittedBox(
                  child: const Text(
                    'Today',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              height: 35,
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            child: TextField(
              autofocus: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  helperStyle: TextStyle(fontWeight: FontWeight.normal),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.white)),
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}

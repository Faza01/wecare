import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xff3B91CF),
              borderRadius: BorderRadius.circular(5),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      //physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xff3B91CF),
            borderRadius: BorderRadius.circular(5),
          ),
        )
      ],
    );
  }
}

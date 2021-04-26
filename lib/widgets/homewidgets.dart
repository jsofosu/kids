import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final String icon;
  final int color;
  final String cat;
  Tabs(this.icon, this.color, this.cat);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
                padding: EdgeInsets.all(15),
                child: Image.asset(
                  icon,
                  width: 30,
                  height: 50,
                ),
                decoration:
                    BoxDecoration(color: Color(color), shape: BoxShape.circle)),
            SizedBox(height: 10),
            Text(
              cat,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        SizedBox(width: 25)
      ],
    );
  }
}

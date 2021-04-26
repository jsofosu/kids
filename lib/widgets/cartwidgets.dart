import 'package:flutter/material.dart';
import '../model/fit.dart';

class CartCard extends StatelessWidget {
  final Outline info;
  CartCard(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) / 4.9,
      padding: EdgeInsets.fromLTRB(0, 15, 15, 0),
      margin: EdgeInsets.fromLTRB(25, 15, 25, 15),
      decoration: BoxDecoration(
          color: Color(0xffedefee), borderRadius: BorderRadius.circular(15)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: (MediaQuery.of(context).size.height) / 4,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(info.image), fit: BoxFit.fitHeight)),
        ),
        Container(
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: Text(
                  info.name,
                  style: TextStyle(fontSize: 18),
                )),
                SizedBox(height: 20),
                Text(
                  'Medium Size',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 30),
                Row(children: [
                  IncDec(Icons.horizontal_rule, Colors.transparent),
                  SizedBox(width: 10),
                  Text('1'),
                  SizedBox(width: 10),
                  IncDec(Icons.add, Colors.green),
                ])
              ],
            )),
        Align(
            alignment: Alignment.topRight,
            child: Text(
              '\$' + info.price.toString(),
              style: TextStyle(fontSize: 18),
            ))
      ]),
    );
  }
}

class IncDec extends StatelessWidget {
  final IconData incdec;
  final Color colour;
  IncDec(this.incdec, this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 26,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colour,
          border: Border.all(color: Colors.green)),
      child: Icon(
        incdec,
        size: 17,
      ),
    );
  }
}

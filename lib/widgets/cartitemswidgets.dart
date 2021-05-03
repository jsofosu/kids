import 'package:flutter/material.dart';
import '../model/fit.dart';

class CartCard extends StatefulWidget {
  final Outline info;
  CartCard(this.info);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) / 5.5,
      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
      margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
      decoration: BoxDecoration(
        color: Color(0xffedefee),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(widget.info.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      child: Text(
                    widget.info.name,
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'Lora', letterSpacing: 0.5),
                  )),
                  SizedBox(height: 20),
                  Text(
                    'Medium Size',
                    style: TextStyle(
                      fontSize: 15,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(children: [
                    IncDec(Icons.horizontal_rule, Colors.transparent),
                    SizedBox(width: 17),
                    Text(widget.info.quantity.toString()),
                    SizedBox(width: 17),
                    IncDec(Icons.add, Colors.green),
                  ])
                ],
              )),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '\$' + ' ' + widget.info.price.toString(),
              style: TextStyle(fontSize: 18, fontFamily: 'Lora'),
            ),
          ),
        ],
      ),
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

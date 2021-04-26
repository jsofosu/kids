import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/fit.dart';
import './cart.dart';
import '../providers/cartprovider.dart';

class Detail extends StatefulWidget {
  final Outline out;
  Detail(this.out);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Color(0xffedefee),
      body: Stack(children: [
        Container(
          height: (MediaQuery.of(context).size.height / 2) + 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xffedefee),
              image: DecorationImage(
                  image: AssetImage(widget.out.image), fit: BoxFit.fitHeight)),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 2) - 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Container(
                                    width:
                                        (MediaQuery.of(context).size.width) / 2,
                                    child: Text(widget.out.name,
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Lora')))),
                            Text(widget.out.price.toString(),
                                style: Theme.of(context).textTheme.bodyText1)
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                            child: Flexible(
                          child: Text(
                            widget.out.description,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        )),
                        SizedBox(height: 5),
                        Text('CHOOSE YOUR SIZE',
                            style: TextStyle(fontSize: 15)),
                        SizedBox(height: 5),
                        Row(children: [
                          Sizes('S'),
                          Sizes('M'),
                          Sizes('L'),
                          Sizes('XL')
                        ]),
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            cart.add(widget.out);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.shopping_cart),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cart()));
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  Text('Add to Cart',
                                      style:
                                          Theme.of(context).textTheme.bodyText1)
                                ]),
                            decoration: BoxDecoration(
                              color: Color(0xff3e3e70),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        )
                      ]),
                )))
      ]),
    );
  }
}

class Sizes extends StatefulWidget {
  final String size;
  Sizes(this.size);

  @override
  _SizesState createState() => _SizesState();
}

class _SizesState extends State<Sizes> {
  bool touched = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() => touched = !touched);
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: touched ? Color(0xff8282a2) : Colors.white,
                border: Border.all(color: Colors.blue)),
            child: Center(child: Text(widget.size)),
          ),
        ),
        SizedBox(width: 20)
      ],
    );
  }
}

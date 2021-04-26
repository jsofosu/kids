import 'package:flutter/material.dart';
import 'package:kids/widgets/cartwidgets.dart';
import '../providers/cartprovider.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final crtitem = Provider.of<CartModel>(context, listen: false).cartitems;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Cart',
                  style: TextStyle(fontSize: 36, fontFamily: 'Lora'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: (MediaQuery.of(context).size.height) / 1.6,
                child: ListView.builder(
                    itemCount: crtitem.length,
                    itemBuilder: (context, i) {
                      return CartCard(crtitem[i]);
                    }),
              ),
              SizedBox(height: 10),
              Container(
                  child: Column(
                children: [
                  Text('Choose credit card', style: TextStyle(fontSize: 18)),
                ],
              )),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                padding: EdgeInsets.fromLTRB(25, 25, 10, 25),
                height: (MediaQuery.of(context).size.height) / 8,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 42,
                      width: 60,
                      color: Colors.white,
                      child: Image.asset(
                        'images/masterrcard.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Personal Account',
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          SizedBox(height: 10),
                          Text('**** - **** - 9876')
                        ],
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.done_sharp,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                padding: EdgeInsets.fromLTRB(25, 25, 10, 25),
                height: (MediaQuery.of(context).size.height) / 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 42,
                        width: 60,
                        child: Image.asset(
                          'images/visacard.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          'Business Account',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text('**** - **** - 9876')
                      ])),
                      Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'Swipe to pay',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                height: 70,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(color: Colors.grey)),
              )
            ],
          ),
        ));
  }
}

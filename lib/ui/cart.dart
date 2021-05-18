import 'package:flutter/material.dart';
import 'package:kids/ui/home.dart';
import 'package:kids/widgets/cartitemswidgets.dart';
import '../providers/cartprovider.dart';
import 'package:provider/provider.dart';
import '../widgets/cartpaywidget.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final crtitem = Provider.of<CartModel>(context).cartitems;
    final cart = Provider.of<CartModel>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Index(),
              ),
            ),
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
                  child: crtitem.length == 0
                      ? Center(
                          child: Text(
                          'No items in Cart',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Lora',
                              color: Colors.grey),
                        ))
                      : ListView.builder(
                          itemCount: crtitem.length,
                          itemBuilder: (context, i) {
                            final item = crtitem[i].id;
                            return Dismissible(
                              key: ValueKey(item),
                              child: CartCard(
                                crtitem[i],
                              ),
                              onDismissed: (direction) {
                                cart.removeitem(crtitem[i]);
                                setState(() {
                                  crtitem[i].incart = !crtitem[i].incart;
                                });
                              },
                              background: Container(
                                color: Colors.red,
                              ),
                            );
                          },
                        )),
              SizedBox(height: 10),
              Pay(),
            ],
          ),
        ));
  }
}

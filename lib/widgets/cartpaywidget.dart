import 'package:flutter/material.dart';

class PayCard extends StatelessWidget {
  final String cardimage;
  final String accountname;
  final Color cardcolor;
  PayCard(this.cardimage, this.accountname, this.cardcolor);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      padding: EdgeInsets.fromLTRB(25, 25, 10, 25),
      height: (MediaQuery.of(context).size.height) / 8,
      decoration: BoxDecoration(
          color: cardcolor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 42,
            width: 60,
            color: Colors.white,
            child: Image.asset(
              cardimage,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(accountname,
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
                border: Border.all(color: Colors.grey[200])),
            child: Icon(
              Icons.done_sharp,
              color: cardcolor,
            ),
          )
        ],
      ),
    );
  }
}

class Pay extends StatelessWidget {
  const Pay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Choose credit card',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 15),
          PayCard(
            'images/masterrcard.png',
            'Personal Account',
            Color(0xff4a9688),
          ),
          SizedBox(height: 10),
          PayCard(
            'images/visacard.png',
            'Business Account',
            Colors.white,
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
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            height: 70,
            margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
            padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
            decoration: BoxDecoration(
              color: Color(0xff3e3e70),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}

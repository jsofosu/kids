import 'package:flutter/material.dart';
import '../widgets/profilecard.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ProfileCard> profile = [
    ProfileCard('Personal Info', 'Phone, Email Address, Shipping', Icons.book),
    ProfileCard('Payment', 'Credit Card Information', Icons.card_giftcard),
    ProfileCard('Password', 'For safety change regularly', Icons.security),
    ProfileCard('Purchase List', 'Your shopping history',
        Icons.shopping_basket_outlined)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedefee),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height / 2) - 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Angela Smith',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lora',
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('angela@gmail.com'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 2) + 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white),
              child: ListView.separated(
                itemCount: profile.length,
                itemBuilder: (context, i) {
                  return Container(child: profile[i]);
                },
                separatorBuilder: (context, index) {
                  return Divider(color: Colors.grey);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

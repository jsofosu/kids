import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedefee),
      body: Stack(children: [
        SafeArea(
          child: Container(
            height: (MediaQuery.of(context).size.height / 2) - 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffedefee),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 150,
                height: 120,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent,
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
            ]),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 2) + 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileCard(),
                        ProfileCard(),
                        ProfileCard(),
                        ProfileCard(),
                      ]),
                )))
      ]),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.book,
                      size: 26,
                    ),
                    Container(
                      //color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Personal Info',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text(
                            'Phone, Email Address, Shipping',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_right_alt),
                      onPressed: () {},
                    )
                  ]),
              SizedBox(height: 18),
              Divider(color: Colors.grey)
            ],
          ),
        ),
        SizedBox(height: 22),
      ],
    );
  }
}

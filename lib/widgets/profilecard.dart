import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String infotype;
  final String sub;
  final IconData icon;
  ProfileCard(this.infotype, this.sub, this.icon);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    size: 26,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          infotype,
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 28,
                            fontFamily: 'Lora',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          sub,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 22),
      ],
    );
  }
}

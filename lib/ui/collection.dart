import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/fit.dart';
import 'detail.dart';

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final availitem = Provider.of<Clothes>(context, listen: false).clothes;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            highlightColor: Colors.white,
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Font('Kids', 36),
            Font('Collections', 36),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: availitem.length,
                  itemBuilder: (context, i) {
                    return Container(
                        child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(availitem[i]),
                              ),
                            );
                          },
                          child: Container(
                            height: 160,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffedefee),
                              image: DecorationImage(
                                alignment: Alignment.topCenter,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  availitem[i].image,
                                ),
                              ),
                            ),
                            width: (MediaQuery.of(context).size.width) / 2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          availitem[i].category,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ));
                  }),
            )
          ],
        ));
  }
}

class Font extends StatelessWidget {
  final String text;
  final double size;
  Font(this.text, this.size);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: 'Lora',
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/fit.dart';
import '../ui/detail.dart';

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
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Kids',
              style: TextStyle(fontSize: 36, fontFamily: 'Lora'),
            ),
            Text(
              'Collections',
              style: TextStyle(fontSize: 36, fontFamily: 'Lora'),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.9,
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
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage(availitem[i].image))),
                              width: (MediaQuery.of(context).size.width) / 2),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Casual',
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

import 'package:flutter/material.dart';
import '../widgets/homewidgets.dart';
import 'collection.dart';
import './cart.dart';
import './profile.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selected = 0;
  List<Widget> _widgets = <Widget>[Home(), Collection(), Cart(), Profile()];

  _onItemTapped(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets.elementAt(_selected),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: _selected,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Home'),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SafeArea(
            child: Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(25, 50, 20, 20),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(children: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Text('Search Products', style: TextStyle(fontSize: 16))
          ]),
        )),
        Container(
          margin: EdgeInsets.fromLTRB(25, 20, 0, 10),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Tabs('images/cap_icon.png', int.parse('0xffe0eeea'), 'Hats'),
              Tabs('images/glov_icon.png', int.parse('0xffd8e2ea'), 'Gloves'),
              Tabs('images/bg_icon.png', int.parse('0xfff6efe0'), 'Bags'),
              Tabs('images/jeans_icon.png', int.parse('0xffe8e1db'), 'Jeans'),
              Tabs('images/cap_icon.png', int.parse('0xffe0eeea'), 'Dress'),
            ]),
          ),
        ),
        SizedBox(height: 40),
        Text('Casual', style: TextStyle(fontSize: 34, fontFamily: 'Lora')),
        Text(
          'Collections',
          style: TextStyle(fontSize: 36, fontFamily: 'Lora'),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height) / 2 + 150,
          decoration: BoxDecoration(
            color: Color(0xffedefee),
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: AssetImage(
                'images/msweat1.png',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

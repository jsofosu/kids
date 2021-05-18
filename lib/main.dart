import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './ui/home.dart';
import 'providers/cartprovider.dart';
import './model/fit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
        ChangeNotifierProvider(create: (context) => Clothes())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              height: 1.5,
              fontSize: 18,
              fontFamily: 'Lora',
              fontWeight: FontWeight.w300,
            ),
            headline1: TextStyle(
              height: 1.5,
              fontSize: 36,
              fontFamily: 'Lora',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        home: Index(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => Index(),
        },
      ),
    );
  }
}

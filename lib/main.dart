import 'package:flutter/material.dart';
import 'package:movie_app/providers/providers.dart';
import 'package:provide/provide.dart';
import 'pages/home/home.dart';
import 'pages/login/login.dart';
import 'pages/sign_up/sign_up.dart';

void main() {
  runApp(
    ProviderNode(
      providers: AllProviders().providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Movie App',
        theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.deepPurple),
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => LoginPage(),
          '/home': (BuildContext context) => HomePage(),
          '/signup': (BuildContext context) => SignUpPage()
        });
  }
}

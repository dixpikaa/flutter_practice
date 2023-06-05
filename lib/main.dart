import 'package:basic_app/homescreen.dart';
import 'package:basic_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
    MultiProvider(providers: [
ChangeNotifierProvider(create: (_) => Counter()),

    ], child: MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => MyHomePage()
      },
    );
  }
}
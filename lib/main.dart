import 'package:favouriteproviderapp/providers/favouriteprovider.dart';
import 'package:flutter/material.dart';
import 'package:favouriteproviderapp/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:  [
      ChangeNotifierProvider(create: (context)=>FavouriteProvider())
    ],child: MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const Home(),
    ));
  }
}

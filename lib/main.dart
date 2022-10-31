import 'package:flutter/material.dart';
import 'package:flutter_test_provider/pages/home_page.dart';
import 'package:flutter_test_provider/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ProductProvider(),
        child: const HomePage(),
      ),
    );
  }
}

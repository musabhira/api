// import 'package:api4/apiconnect/home.dart';
// import 'package:api4/apifreezed/view/home.dart';
import 'package:api4/apifreezed/view/home.dart';
import 'package:api4/apifreezed/view/home2.dart';
// import 'package:api4/notifier/Myhom2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

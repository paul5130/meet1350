import 'package:flutter/material.dart';
import 'package:meet1350/initial_binding.dart';
import 'package:meet1350/pages/my_home_page.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.initialBinding,
  });
  final InitialBinding initialBinding;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: initialBinding.flavorConfig.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

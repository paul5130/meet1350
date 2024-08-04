import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:meet1350/initial_binding.dart';
import 'package:meet1350/pages/my_home_page.dart';

class App extends StatelessWidget with WidgetsBindingObserver {
  const App({
    super.key,
    required this.initialBinding,
  });
  final InitialBinding initialBinding;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onInit: () => WidgetsBinding.instance.addObserver(this),
      onDispose: () => WidgetsBinding.instance.removeObserver(this),
      title: initialBinding.flavorConfig.title,
      initialBinding: initialBinding,
      initialRoute: MyHomePage.ROUTE_NAME,
      getPages: [
        GetPage(
          name: MyHomePage.ROUTE_NAME,
          page: () => const MyHomePage(),
        ),
      ],
    );
  }
}

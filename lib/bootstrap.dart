import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meet1350/app.dart';
import 'package:meet1350/flavors.dart';
import 'package:meet1350/initial_binding.dart';

Future<void> bootstrap({
  required Flavor flavor,
  required FutureOr<Widget> Function({required InitialBinding initialBinding})
      builder,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final flavorConfig = FlavorConfig(flavor: flavor);
  final initialBinding = InitialBinding(flavorConfig: flavorConfig);
  runApp(App(
    initialBinding: initialBinding,
  ));
}

import 'package:get/get.dart' hide Trans;
import 'package:meet1350/flavors.dart';

class InitialBinding extends Bindings {
  InitialBinding({required this.flavorConfig});
  final FlavorConfig flavorConfig;

  @override
  void dependencies() {
    Get.lazyPut<FlavorConfig>(() => flavorConfig, fenix: true);
  }
}

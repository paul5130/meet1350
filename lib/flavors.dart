import 'package:equatable/equatable.dart';

enum Flavor {
  dev,
  qat,
  prod,
}

class FlavorConfig extends Equatable {
  const FlavorConfig({
    required this.flavor,
  });
  final Flavor flavor;

  String get title {
    switch (flavor) {
      case Flavor.dev:
        return '[dev] meet1350';
      case Flavor.qat:
        return '[qat] meet1350';
      case Flavor.prod:
        return 'meet1350';
      default:
        return 'title';
    }
  }

  @override
  List<Object?> get props => [
        flavor,
      ];
}

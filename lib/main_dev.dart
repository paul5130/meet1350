import 'package:meet1350/app.dart';
import 'package:meet1350/bootstrap.dart';

import 'flavors.dart';

void main() => bootstrap(
      flavor: Flavor.dev,
      builder: ({required initialBinding}) => App(
        initialBinding: initialBinding,
      ),
    );

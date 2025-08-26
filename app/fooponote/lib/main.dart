import 'package:flutter/services.dart';

import 'package:fooponote/app.dart';
import 'package:fooponote/flavors.dart';

void main() {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  run();
}

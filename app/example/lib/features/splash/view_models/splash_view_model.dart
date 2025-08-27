import 'package:signals/signals.dart';

class SplashViewModel {
  final Signal<bool> isStart = Signal(false);

  void init() {
    isStart.value = true;
  }
}

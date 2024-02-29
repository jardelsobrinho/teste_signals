import 'package:signals/signals_flutter.dart';
import 'package:test_signals/controller_base.dart';

class CountController extends ControllerBase {
  final counter = signal(0);

  add() {
    counter.value++;
  }

  @override
  dispose() {
    counter.dispose();
    return super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ControllerBase {
  ControllerBase() {
    error.onDispose(() {
      debugPrint("dipose error");
    });
  }

  final error = signal("");

  dispose() {
    error.dispose();
  }
}

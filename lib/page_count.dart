import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:test_signals/count_controller.dart';

class PageCount extends StatefulWidget {
  const PageCount({super.key});

  @override
  State<PageCount> createState() => _PageCountState();
}

class _PageCountState extends State<PageCount> {
  final controller = CountController();
  @override
  void initState() {
    controller.counter.onDispose(() {
      debugPrint("Finalizado counter");
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Test")),
      body: Column(
        children: [
          Watch(
            (context) => Text("${controller.counter.value}"),
          ),
          Watch(
            (context) => Text("${controller.counter.value}"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../controllers/counter_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CounterController controller = CounterController();

  void updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MVC Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "${controller.counterValue}",
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.decrement();
              updateUI();
            },
            heroTag: "decrement",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              controller.increment();
              updateUI();
            },
            heroTag: "increment",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
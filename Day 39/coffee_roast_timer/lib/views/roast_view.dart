import 'package:flutter/material.dart';
import '../controllers/roast_controller.dart';

class RoastView extends StatefulWidget {
  const RoastView({super.key});

  @override
  State<RoastView> createState() => _RoastViewState();
}

class _RoastViewState extends State<RoastView> {
  final RoastController controller = RoastController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffee Roast Timer"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: controller.roastColor,
                    shape: BoxShape.circle,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  controller.roastStage,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "${controller.seconds} Seconds",
                  style: const TextStyle(fontSize: 22),
                ),

                const SizedBox(height: 30),

                Wrap(
                  spacing: 10,
                  children: [
                    ElevatedButton(
                      onPressed: controller.startRoasting,
                      child: const Text("Start Roasting"),
                    ),

                    ElevatedButton(
                      onPressed: controller.forwardStage,
                      child: const Text("Forward"),
                    ),

                    ElevatedButton(
                      onPressed: controller.backStage,
                      child: const Text("Back"),
                    ),

                    ElevatedButton(
                      onPressed: controller.resetRoast,
                      child: const Text("Reset"),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
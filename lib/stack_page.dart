import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),

      //
      body: Column(
        children: [
          // s1
          Stack(
            alignment: Alignment.center,
            children: [
              //
              Container(
                height: 250,
                color: Colors.green,
              ),

              //
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.red,
              ),
            ],
          ),

          const SizedBox(height: 24),

          // s2
          Stack(
            alignment: Alignment.bottomLeft,
            clipBehavior: Clip.none,
            children: [
              //
              Container(
                height: 200,
                color: Colors.blueAccent.shade200,
              ),

              //
              const Positioned(
                left: 24,
                bottom: -75,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

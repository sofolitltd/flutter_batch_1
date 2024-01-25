import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expanded',
        ),
      ),

      //
      body: Row(
        children: [
          //Expanded
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),

          Expanded(
            flex: 6,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

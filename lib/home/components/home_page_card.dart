import 'package:flutter/material.dart';

import '../../detail/detail_page.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // navigate
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.pink.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.person)),
            const SizedBox(height: 8),
            const Text(
              'Personal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text('17 Task'),
          ],
        ),
      ),
    );
  }
}

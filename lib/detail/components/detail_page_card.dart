import 'package:flutter/material.dart';

class DetailPageCard extends StatelessWidget {
  const DetailPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Urgent"),
          const Divider(),

          //
          Row(
            children: [
              Container(
                height: 40,
                width: 4,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 10),

              //
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New web design",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("data"),
                ],
              ),
              const Spacer(),

              //
              const Icon(Icons.more_vert),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/detail_page_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: 10,
        itemBuilder: (context, index) => const DetailPageCard(),
      ),
    );
  }
}

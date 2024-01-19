import 'package:flutter/material.dart';

import 'components/detail_page_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
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

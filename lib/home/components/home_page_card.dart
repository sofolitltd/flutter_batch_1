import 'package:flutter/material.dart';

import '../../detail/detail_page.dart';

List taskList = [
  // [0, 1,2,3]
  {
    "title": "Personal",
    "task": "17",
    "icon": Icons.person,
    "iconColor": Colors.deepPurpleAccent,
  },
  {
    "title": "Work",
    "task": "10",
    "icon": Icons.card_giftcard,
    "iconColor": Colors.orangeAccent,
  },
  {
    "title": "Private",
    "task": "2",
    "icon": Icons.person,
    "iconColor": Colors.green,
  },
  {
    "title": "Meeting",
    "task": "5",
    "icon": Icons.group,
    "iconColor": Colors.deepPurpleAccent,
  },
  {
    "title": "Events",
    "task": "3",
    "icon": Icons.event,
    "iconColor": Colors.orange,
  },
  {
    "title": "Create Board",
    "task": "1",
    "icon": Icons.add_box,
    "iconColor": Colors.green,
  },
];

class HomePageCard extends StatelessWidget {
  const HomePageCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // navigate
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    title: taskList[index]["title"],
                  )),
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
            //icon
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.shade200.withOpacity(.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  taskList[index]["icon"],
                  color: taskList[index]["iconColor"],
                )),
            const SizedBox(height: 8),
            Text(
              taskList[index]["title"],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text('${taskList[index]["task"]} task'),
          ],
        ),
      ),
    );
  }
}

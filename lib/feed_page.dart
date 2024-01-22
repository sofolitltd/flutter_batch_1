//
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: const Text("Feed"),
      ),

      //
      drawer: const Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(),
                SizedBox(height: 8),
                Text("App name"),
              ],
            )),

            //
            ListTile(
              tileColor: Colors.orange,
              leading: CircleAvatar(),
              title: Text("Title"),
              subtitle: Text("subtitle"),
              trailing: Icon(Icons.arrow_drop_down_outlined),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Title"),
              subtitle: Text("subtitle"),
            ),
          ],
        ),
      ),
    );
  }
}

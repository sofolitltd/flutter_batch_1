import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      //
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Add successful"),
              action: SnackBarAction(label: "Undo", onPressed: () {}),
            ),
          );
        },
        tooltip: "Add new file",
        child: const Icon(Icons.add),
      ),

      //
      body: const Text("Profile"),
    );
  }
}

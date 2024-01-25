import 'package:flutter/material.dart';

class ExpandedTilePage extends StatelessWidget {
  const ExpandedTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpandedTile"),
      ),

      //
      body: ListView(
        children: [
          //
          Card(
            color: Colors.red.shade200,
            child: const ListTile(
              title: Text("Reyad"),
              subtitle: Text("Hello world"),
              leading: CircleAvatar(),
            ),
          ),

          Card(
            color: Colors.red.shade200,
            child: const ListTile(
              title: Text("Reyad"),
              subtitle: Text("Hello world"),
              leading: CircleAvatar(),
            ),
          ),
          Card(
            color: Colors.red.shade200,
            child: const ListTile(
              title: Text("Reyad"),
              subtitle: Text("Hello world"),
              leading: CircleAvatar(),
            ),
          ),

          //
          Card(
            color: Colors.green.shade200,
            child: const ExpansionTile(
              title: Text("Reyad"),
              subtitle: Text("Hello world"),
              leading: CircleAvatar(),
              childrenPadding: EdgeInsets.all(16),
              children: [
                Text(
                    " Hello world , this is a expansion tile children section.  Hello world , this is a expansion tile children sectionHello world , this is a expansion tile children sectionHello world , this is a expansion tile children section")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

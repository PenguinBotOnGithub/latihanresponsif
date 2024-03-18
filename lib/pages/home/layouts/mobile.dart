import 'package:flutter/material.dart';
import 'package:latihanresponsf/utils/files.dart';

Widget buildMobileLayout() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Explorer"),
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Explorer")),
          ListTile(
            leading: Icon(
              Icons.folder,
            ),
            title: Text("Files"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
        ],
      ),
    ),
    body: Center(
      child: ListView(
        children: files
            .map((e) => ListTile(
                  onTap: () {},
                  leading: Icon(
                    e["icon"] as IconData,
                    size: 36,
                  ),
                  title: Text(e["name"] as String),
                  subtitle: Text("Last modified: 12 February 2024"),
                  trailing:
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ))
            .toList(),
      ),
    ),
  );
}

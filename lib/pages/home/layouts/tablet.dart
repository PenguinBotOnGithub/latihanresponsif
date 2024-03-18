import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/utils/files.dart';

Widget buildTabletLayout() {
  return Scaffold(
      appBar: AppBar(
        title: Text("Explorer"),
      ),
      body: Row(
        children: [
          SafeArea(
              child: NavigationRail(destinations: [
            NavigationRailDestination(
                icon: Icon(Icons.folder), label: Text("Files")),
            NavigationRailDestination(
                icon: Icon(Icons.settings), label: Text("Settings")),
          ], selectedIndex: 0)),
          Expanded(
              child: GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.all(12),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: (Get.width / 180).toInt(),
            children: files
                .map((e) => InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            e["icon"] as IconData,
                            size: 50,
                          ),
                          Text(e["name"] as String)
                        ],
                      ),
                    ))
                .toList(),
          ))
        ],
      ));
}

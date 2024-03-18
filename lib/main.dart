import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanresponsf/pages/home/home_bindings.dart';
import 'package:latihanresponsf/pages/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.cyan, brightness: Brightness.dark)),
      initialBinding: HomeBindings(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomePage(), binding: HomeBindings()),
      ],
    );
  }
}

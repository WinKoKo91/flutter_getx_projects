import 'package:flutter/material.dart';
import 'package:flutter_getx_projects/counter_screen.dart';
import 'package:flutter_getx_projects/mixing_state_management/mixin_page.dart';
import 'package:flutter_getx_projects/reactive_state_management/reactive_page.dart';
import 'package:flutter_getx_projects/simple_state_management/simple_controller.dart';
import 'package:flutter_getx_projects/simple_state_management/simple_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(MyHomePage(title: "Stateful Widget"));
                }, child: const Text('StatefulWidget')),
            ElevatedButton(
                onPressed: () {
                  Get.to(SimplePage());
                }, child: const Text('Simple State Management')),
            ElevatedButton(
                onPressed: () {
                  Get.to(ReactivePage());
                },
                child: const Text('Reactive State Management')),
            ElevatedButton(
                onPressed: () {
                  Get.to(MixinPage());
                }, child: const Text('Mixin State Management')),
          ],
        ),
      ),
    );
  }
}

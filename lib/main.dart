import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_course/Screens/HomeScreen.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) {
      return const MyApp();
    },
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const TextPreview());
  }
}

class TextPreview extends StatelessWidget {
  const TextPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Responsive ui"),
          Text(
            "the label ",
            style: TextStyle(fontSize: MediaQuery.of(context).size.width * .05),
          ),
          const Text(
            "the content of the all screen",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}

double getResponsiveFontSize(

  {required double width }
){
  return width * .05;
}

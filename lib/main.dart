import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';
// import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const TokuApp());
}

// void main() => runApp(
//       DevicePreview(
//         enabled: true,
//         builder: (context) => const TokuApp(),
//       ),
//     );

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:it_hub/src/shared/shared.dart';

void main() {
  runApp(const ItHubApp());
}

class ItHubApp extends StatelessWidget {
  const ItHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Домашняя страница'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Center(child: BasicWidgetsMaterial()),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ConstraintWidgets extends StatelessWidget {
  const ConstraintWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: Center(child: Text('Container')),
        ),
        SizedBox(height: 20),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            maxWidth: 200,
            minHeight: 50,
            maxHeight: 100,
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('ConstrainedBox'),
          ),
        ),
        SizedBox(height: 20),
        AspectRatio(aspectRatio: 16 / 9, child: Container(color: Colors.red)),
        SizedBox(height: 20),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('FractionallySizedBox'),
          ),
        ),
      ],
    );
  }
}

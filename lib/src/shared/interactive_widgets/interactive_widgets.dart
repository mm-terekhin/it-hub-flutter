import 'package:flutter/material.dart';

class InteractiveWidgets extends StatefulWidget {
  const InteractiveWidgets({super.key});

  @override
  State<InteractiveWidgets> createState() => _InteractiveWidgetsState();
}

class _InteractiveWidgetsState extends State<InteractiveWidgets> {
  bool isChecked = false;
  String selectedOption = 'Option 1';
  bool isSwitched = false;
  double sliderValue = 0.5;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print('ElevatedButton pressed');
            },
            child: Text('ElevatedButton'),
          ),
          SizedBox(height: 20),
          TextField(
            controller: textController,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
            onChanged: (text) {
              print('User input: $text');
            },
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                  print('Checkbox is $isChecked');
                },
              ),
              Text('Checkbox'),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Radio(
                value: 'Option 1',
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value!;
                  });
                  print('Selected option: $selectedOption');
                },
              ),
              Radio(
                value: 'Option 2',
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value!;
                  });
                  print('Selected option: $selectedOption');
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                  print('Switch is $isSwitched');
                },
              ),
              Text('Switch'),
            ],
          ),
          SizedBox(height: 20),
          Slider(
            value: sliderValue,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });
              print('Slider value: $sliderValue');
            },
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print('Tapped');
            },
            onDoubleTap: () {
              print('Double Tapped');
            },
            onLongPress: () {
              print('Long Pressed');
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Tap Me')),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChoiceChipWidget(),
    ),
  );
}

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  @override
  bool isSelected = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text("Choice Chip"),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text("Cohort 2"),
          selected: isSelected,
          selectedColor: Colors.blue,
          onSelected: (newState) {
            setState(() {
              isSelected = newState;
            });
          },
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class SystemItems extends StatefulWidget {
  const SystemItems({super.key});

  @override
  _SystemItemsState createState() => _SystemItemsState();
}

class _SystemItemsState extends State<SystemItems> {
  String? selectedOption; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(selectedOption == null
            ? 'Choose Your System:'
            : ' Your System: $selectedOption'), 
        PopupMenuButton<String>(
          icon: const Icon(Icons.arrow_drop_down),
          onSelected: (String value) {
            setState(() {
              selectedOption = value; 
            });
          },
          itemBuilder: (BuildContext context) {
            return {'PPL', 'Upper', 'Lower', 'General', 'Body Parts'}
                .map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:gym_app/widgets/constants.dart';

class ActiveIndicatorText extends StatelessWidget {
  final String item;
  final bool isActive;

 

  const ActiveIndicatorText({super.key, 
    
    required this.item,
    required this.isActive,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isActive
                ? activeColor
                : Colors.transparent, 
          ),
          width: 8, 
          height: 30, 
        ),
        const SizedBox(width: 8), 
        Text(
          item,
          style: TextStyle(
            color: isActive ? activeColor : inactiveColor,
            fontSize: isActive ? 20 : 14,
            fontWeight:
                isActive ? FontWeight.bold : FontWeight.normal, 
          ),
        ),
      ],
    );
  }
}

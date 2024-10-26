import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity; // Fixed typo from 'qountity' to 'quantity'
  final Food food;
  final VoidCallback onIncrement; // Fixed typo from 'VoidCallbackAction' to 'VoidCallback'
  final VoidCallback onDecrement; // Fixed typo from 'VoidCallbackAction' to 'VoidCallback'

  const MyQuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //decress button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          //qountnty count
         Padding(padding: 
         EdgeInsets.symmetric(horizontal: 8),
         child: SizedBox(
          width: 20,
           child: Center(
            child: Text(quantity.toString()),
           ),
         ),
         ),
          //increse button
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTitle({
    super.key,
    required this.food,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const SizedBox(width: 15.0), // Added spacing on the left
                // Food image with rounded corners
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0), // Rounded corners
                  child: Image.asset(
                    food.imagePath,
                    height: 120.0,
                    width: 120.0, // Fixed width to ensure consistent size
                    fit: BoxFit.cover, // Ensure the image covers the box without distortion
                  ),
                ),
                const SizedBox(width: 15.0), // Space between image and text
                // Food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0, // Adjust font size as needed
                        ),
                      ),
                      Text(
                        '${food.price.toString()} LE', // Added space between price and currency
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16.0, // Adjust font size as needed
                        ),
                      ),
                      const SizedBox(height: 10.0), // Space between price and description
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 14.0, // Adjust font size as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Divider below the content
        Divider(
          color: Theme.of(context).colorScheme.tertiary, // Divider color
          endIndent: 25,
          indent: 25, // Align the divider with padding
        ),
      ],
    );
  }
}

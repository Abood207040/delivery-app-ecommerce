import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your Location"),
        content: const TextField(
          decoration: InputDecoration(hintText: "Search address..."),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Divider
        Padding(padding: EdgeInsets.only(top: 56),),
        const Divider(
          thickness: 1.0,
          color: Colors.grey,
        ),
        const SizedBox(height: 10.0), // Space between divider and text

        // Deliver now text
        Text(
          "Deliver now",
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontSize: 16.0, // Adjust font size as needed
          ),
        ),
        const SizedBox(height: 8.0), // Space between text and address

        // Address with dropdown icon
        GestureDetector(
          onTap: () => openLocationSearchBox(context),
          child: Row(
            mainAxisSize: MainAxisSize.min, // Ensure the row size fits its content
            children: [
              Text(
                "6601 Almahmoudya, Aswan",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0, // Adjust font size as needed
                ),
              ),
              // Dropdown menu icon without additional space
              const SizedBox(width: 4.0), // Minimal space for better visual alignment
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/home_page.dart';
import 'package:delivery_app/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // Initialize selected add-ons to false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food image
            Stack(
              children: [
                Image.asset(
                  widget.food.imagePath,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: BackButton(
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Food price
                  Text(
                    '${widget.food.price} LE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Food description
                  Text(
                    widget.food.description,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 20),

                  // Add-ons section
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Theme.of(context).colorScheme.secondary),

                  // Add-ons list
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        // Get individual addon
                        Addon addon = widget.food.availableAddons[index];
                        // Return checkbox list tile
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text('${addon.price} LE'),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                          activeColor: Theme.of(context).colorScheme.primary,
                          checkColor: Colors.white,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Button to add to cart
                  Center(
                    child: MyButton(
                      onTap: () =>
                          addToCart(widget.food, widget.selectedAddons),
                      text: 'Add to Cart',
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the cuurent page to go back to menu
    Navigator.pop(context);

    //format the selected addones
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Resturant>().addToCart(food, currentlySelectedAddons);
  }
}

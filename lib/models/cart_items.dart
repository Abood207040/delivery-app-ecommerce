import 'package:delivery_app/models/food.dart';

class CartItems {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItems({
    required this.food,
    this.quantity = 1,
    required this.selectedAddons,
  });

  double get totalPrice {
    // Calculate the total price of addons
    double addonsPrice = selectedAddons.fold(
      0.0,
      (sum, addon) => sum + addon.price,
    );

    // Return the total price including the food price and the addons
    return (food.price + addonsPrice) * quantity;
  }
}

import 'package:collection/collection.dart';
import 'package:delivery_app/models/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Resturant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Cheese Burger",
      description:
          "  A juicy beef patty with melted cheddar, crisp lettuce, tomatoes, pickles, and onions on a toasted bun. Served with fries.",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
        Addon(name: "Bacon", price: 20),
      ],
      category: FoodCategory.burgers,
    ),

    Food(
      name: "BBQ Burger ",
      description:
          "  Smoky grilled beef patty topped with tangy BBQ sauce, melted cheddar, crispy bacon, and onions on a toasted bun. Served with fries.",
      imagePath: "lib/images/burgers/bbq_burger.jpeg",
      price: 160,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
        Addon(name: "Bacon", price: 20),
      ],
      category: FoodCategory.burgers,
    ),

    Food(
      name: "Aloha Burger",
      description:
          "  Juicy beef patty topped with grilled pineapple, melted Swiss cheese, crisp lettuce, and a tangy teriyaki glaze on a toasted bun. Served with fries.",
      imagePath: "lib/images/burgers/aloha_burger.jpg",
      price: 170,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
        Addon(name: "Bacon", price: 20),
      ],
      category: FoodCategory.burgers,
    ),

    Food(
      name: "Blue Moon Burger",
      description:
          " Savory beef patty topped with rich blue cheese, crispy bacon, caramelized onions, and fresh arugula on a toasted bun. Served with fries.",
      imagePath: "lib/images/burgers/bluemoon_burger.jpeg",
      price: 180,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
        Addon(name: "Bacon", price: 20),
      ],
      category: FoodCategory.burgers,
    ),

    Food(
      name: "Vege Burger",
      description:
          " A hearty plant-based patty with fresh lettuce, ripe tomatoes, cucumber, and avocado on a toasted whole-grain bun. Served with fries.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 200,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
        Addon(name: "Bacon", price: 20),
      ],
      category: FoodCategory.burgers,
    ),

    //salads
    Food(
      name: "Caeser Salad",
      description:
          "Crisp romaine lettuce tossed with creamy Caesar dressing, crunchy croutons, and shaved Parmesan cheese. Topped with grilled chicken.",
      imagePath: "lib/images/salads/caeser_salad.jpg",
      price: 160,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.salads,
    ),

    Food(
      name: "Greek Salad",
      description:
          "A refreshing mix of crisp lettuce, ripe tomatoes, cucumbers, red onions, Kalamata olives, and feta cheese, all drizzled with olive oil and a splash of lemon.",
      imagePath: "lib/images/salads/greek_salad.jpeg",
      price: 170,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.salads,
    ),

    Food(
      name: "Quinoa Salad",
      description:
          "A nutritious blend of fluffy quinoa, cherry tomatoes, cucumbers, avocado, and fresh herbs, tossed in a light lemon vinaigrette.",
      imagePath: "lib/images/salads/quinoa_salad.jpg",
      price: 180,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.salads,
    ),

    Food(
      name: "South West Salad",
      description:
          "A zesty mix of romaine lettuce, grilled corn, black beans, avocado, cherry tomatoes, and cheddar cheese, topped with a spicy chipotle dressing.",
      imagePath: "lib/images/salads/southwest_salad.jpeg",
      price: 160,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.salads,
    ),

    Food(
      name: "Asian Sesame Salad",
      description:
          "Crisp romaine lettuce tossed with creamy Caesar dressing, crunchy croutons, and shaved Parmesan cheese. Topped with grilled chicken.",
      imagePath: "lib/images/salads/asiansesame_salad.jpg",
      price: 200,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.salads,
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description:
          "Toasted baguette slices brushed with a rich garlic butter blend, garnished with fresh parsley. Crispy on the outside and soft on the inside.",
      imagePath: "lib/images/sides/garlic_bread_side.jpg",
      price: 100,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Loaded Fries",
      description:
          "Crispy fries topped with melted cheese, crispy bacon bits, and drizzled with creamy ranch sauce. Garnished with fresh chives.",
      imagePath: "lib/images/sides/loaded_fries_side.jpeg",
      price: 120,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Mozzarella Sticks",
      description:
          "Breaded and fried mozzarella cheese sticks, served with a side of marinara sauce for dipping. Crispy on the outside, gooey on the inside.",
      imagePath: "lib/images/sides/mozzarella_sticks_side.jpg",
      price: 120,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Onion Rings",
      description:
          "Crispy, golden-brown rings of tender onions, coated in a seasoned batter and served with a side of tangy dipping sauce.",
      imagePath: "lib/images/sides/onion_rings_side.jpg",
      price: 100,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.sides,
    ),

    Food(
      name: "Sweet Potato",
      description:
          "Crispy and lightly seasoned sweet potato fries, offering a sweet and savory crunch with a hint of natural sweetness.",
      imagePath: "lib/images/sides/sweet_potato_side.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.sides,
    ),
    //desserts

    Food(
      name: "Choclate Cake",
      description:
          "Decadent and rich chocolate cake with layers of smooth chocolate ganache, topped with a dusting of cocoa powder. Indulge in this sweet, velvety treat.",
      imagePath: "lib/images/desserts/choclate_cake_dessert.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.desserts,
    ),

    Food(
      name: "Cheese Cake",
      description:
          "Creamy and velvety cheesecake with a buttery graham cracker crust, topped with a fresh fruit compote or chocolate drizzle. A classic dessert with a rich, satisfying flavor.",
      imagePath: "lib/images/desserts/cheese_cake_desset.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.desserts,
    ),

    Food(
      name: "Choclate Crepe",
      description:
          "Delicate, thin crepe filled with rich, melted chocolate and dusted with powdered sugar. Served with a dollop of whipped cream and a drizzle of chocolate sauce.",
      imagePath: "lib/images/desserts/crepe_dessert.jpeg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.desserts,
    ),

    Food(
      name: "Ice Cream",
      description:
          "Creamy and smooth ice cream available in a variety of flavors, served in a cone or bowl. Perfectly chilled and sweetened for a refreshing treat.",
      imagePath: "lib/images/desserts/ice_creem_dessert.jpg",
      price: 100,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.desserts,
    ),

    Food(
      name: "Choclate Waffle",
      description:
          "Warm, crisp waffle infused with rich cocoa, topped with a drizzle of chocolate sauce and a dusting of powdered sugar. Served with whipped cream and your choice of fresh berries.",
      imagePath: "lib/images/desserts/waffle_dessert.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
        Addon(name: "Souce", price: 20),
      ],
      category: FoodCategory.desserts,
    ),

    //drinks
    Food(
      name: "Hot Tea",
      description:
          "Steaming cup of premium tea, brewed to perfection. Choose from a selection of flavors, including classic black, soothing green, or aromatic herbal blends. Served with a slice of lemon and honey.",
      imagePath: "lib/images/drinks/tee_drink.jpeg",
      price: 100,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
      ],
      category: FoodCategory.drinks,
    ),

    Food(
      name: "Hot Cappuccino",
      description:
          "Rich espresso topped with a frothy layer of steamed milk and a dusting of cocoa powder. A warm, comforting blend with a balanced coffee flavor.",
      imagePath: "lib/images/drinks/cappuccino_drink.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
      ],
      category: FoodCategory.drinks,
    ),

    Food(
      name: "Hot Choclate",
      description:
          "Creamy and indulgent hot chocolate made with rich cocoa and topped with whipped cream. A perfect, cozy treat to warm you up.",
      imagePath: "lib/images/drinks/hot_chocolate_drink.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
      ],
      category: FoodCategory.drinks,
    ),

    Food(
      name: "Milk Shake",
      description:
          "Thick and creamy milkshake made with rich ice cream and milk, blended to perfection. Available in classic flavors like chocolate, vanilla, and strawberry.",
      imagePath: "lib/images/drinks/milshake_drink.jpg",
      price: 150,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
      ],
      category: FoodCategory.drinks,
    ),

    Food(
      name: "Cold Juice",
      description:
          "Refreshing and chilled juice made from fresh, high-quality fruits. Choose from a variety of flavors like orange, apple, or tropical blend.",
      imagePath: "lib/images/drinks/juce_drink.jpg",
      price: 100,
      availableAddons: [
        Addon(name: "Extra sugar", price: 20),
      ],
      category: FoodCategory.drinks,
    ),
  ];
/*
getters
*/
  List<Food> get menu => _menu;
  List<CartItems> get Cart => _cart;

/*
opperations
*/
//user cart
  final List<CartItems> _cart = [];

//add to cart

  void addToCart(Food food, List<Addon> selectedAddon) {
    //see if there is a cart item alreadt with the same food and selected addones
    CartItems? cartItems = _cart.firstWhereOrNull((item) {
      //cheack of food item are the same
      bool isSameFood = item.food == food;

      //cheack of the list of slected addones are the same
      bool isSameAddones =
          ListEquality().equals(item.selectedAddons, selectedAddon);
      return isSameFood && isSameAddones;
    });
    //if item already exits incress countate
    if (cartItems != null) {
      cartItems.quantity++;
    }
    //otherwise add new item to cart
    else {
      _cart.add(
        CartItems(food: food, selectedAddons: selectedAddon),
      );
    }
    notifyListeners();
  }

//remove from cart

  void removeFromCart(CartItems cartitems) {
    int cartIndex = _cart.indexOf(cartitems);
    if (_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

//get total price of cart

  double getTotalPrice() {
    double total = 0.0;

    for (CartItems cartItems in _cart) {
      double itemTotal = cartItems.food.price;
      for (Addon addon in cartItems.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItems.quantity;
    }
    return total;
  }

//get total num of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItems cartItems in _cart) {
      totalItemCount += cartItems.quantity;
    }
    return totalItemCount;
  }

// clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*
helpers
*/

// generate a recipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here 's youre receipt.");
    receipt.writeln();

    //format the date to include up to seconds onley
    String formattedDate =
        DateFormat("yyyy-mm-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");
    for (final CartItems in _cart) {
      receipt.writeln(
          "${CartItems.quantity} x ${CartItems.food.name} - ${_formatPrice(CartItems.food.price)}");
      if (CartItems.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons:${_formatAddons(CartItems.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

// format double value into money
  String _formatPrice(double price) {
    return "${price.toStringAsFixed(2)} LE";
  }

//format list of addones into string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}

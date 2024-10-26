import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_cart_tile.dart';
import 'package:delivery_app/models/cart_items.dart';
import 'package:delivery_app/models/resturant.dart';
import 'package:delivery_app/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(builder: (context, resturant, child) {
      final userCart = resturant.Cart; // Updated to match naming convention

      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            // clear cart but button
            IconButton(
                onPressed: () {
                  showDialog(
  context: context,
  builder: (context) => AlertDialog(
    title: const Text("Are you sure you want to clear the cart?"),
    actions: [
      // Cancel button
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("Cancel"),
      ),

      // Yes button
      TextButton(
        onPressed: () {
          Navigator.pop(context); // Close the dialog
          resturant.clearCart();  // Clear the cart
        },
        child: const Text("Yes"),
      ),
    ],
  ),
);

                },
                icon: const Icon(Icons.delete)
                )
          ],
        ),
        body: Column(
          children: [
            //list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty? 
                  Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
              "Cart is empty...",
              style: TextStyle(
                fontSize: 18, // Increase the font size
                fontWeight: FontWeight.bold, // Make the text bold
                color: Theme.of(context).colorScheme.primary, // Set the text color to the primary color of the theme
              ),
              textAlign: TextAlign.center, // Center align the text
                    ),
                  ),
                ),
              )
               :
                  Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        final cartItems =
                            userCart[index]; // Use correct variable name
                        return MyCartTile(cartItems: cartItems);
                      },
                    ),
                  ),
                ],
              ),
            ),
            // button to pay
            MyButton(text: "Check out", onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage()))),
            SizedBox(height: 25,),
          ],
        ),
      );
      
    });
  }
}

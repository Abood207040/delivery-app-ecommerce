import 'package:delivery_app/components/my_quantity_selector.dart';
import 'package:delivery_app/models/cart_items.dart';
import 'package:delivery_app/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItems cartItems;
  const MyCartTile({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(builder: (context, resturant, child) =>Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10,),
      child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // food image
               ClipRRect(
                borderRadius: BorderRadius.circular(8),
                 child: Image.asset(
                    cartItems.food.imagePath,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
               ),
        
               const SizedBox(width: 10,),
            //name and price
               Column(
                children: [
                  //food name
                  Text(cartItems.food.name),
                  //price
                  Text(cartItems.food.price.toString()+"LE"),
                ],
               ),

               const Spacer(),
            //increment or decrement quantity
            MyQuantitySelector(quantity: cartItems.quantity,
             food: cartItems.food,
              onDecrement: (){
                resturant.removeFromCart(cartItems);
              },
               onIncrement: (){
                resturant.addToCart(cartItems.food, cartItems.selectedAddons);
               }
               )

          ],
        ),
      ),

      //addones 

     SizedBox(
  height: cartItems.selectedAddons.isEmpty ? 0 : 60,
  child: ListView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 10,bottom: 10,right: 10),
    children: cartItems.selectedAddons.map((addon) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: FilterChip(
          label: Row (
            children: [
              //adon name
              Text(addon.name),
              //addon price
              Text('  ${addon.price} LE',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),),
        ]),
        shape: StadiumBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary
          )
        ),
          
          onSelected: (value) {},
          backgroundColor: Theme.of(context).colorScheme.secondary,
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 12 ),
          
        ),
      );
    }).toList(),
  ),
)

    ],
    ),
    ) ,
    );
  }
}

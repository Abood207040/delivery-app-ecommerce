import 'package:delivery_app/themes/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPages extends StatelessWidget {
  const SettingsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Settings"),
    backgroundColor:  Theme.of(context).colorScheme.background,
    ),
    backgroundColor: Theme.of(context).colorScheme.background,
    body: Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12) ),
          margin: const EdgeInsets.only(left: 25,top:10,right: 25,bottom: 10,),
          padding:const EdgeInsets.all(25) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              CupertinoSwitch(value: Provider.of<ThemeProvider>(context,listen: false)
              .isDarkMode
              , onChanged: (value)=>
              Provider.of<ThemeProvider>(context,listen: false)
              .toogleTheme(),
              )
            ],
          ),
        )
      ],
    ),
    
    );
  }
}
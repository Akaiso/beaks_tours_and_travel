


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget flightCategorySelectionDropdown(){
  return Builder(builder: (context){
    return Container(
        height: 35,
        decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.transparent)),
    child: DropdownButtonHideUnderline(
      child: DropdownButton(elevation: 0,
          value: 'Economy',
          // style: const TextStyle(fontSize: 8),
          items:   const [
            DropdownMenuItem(
              value: 'Economy',
              child: Text('Economy'),
            ),
            DropdownMenuItem(
                value: 'Premium Economy',
                child: Text('Premium Economy')),
            DropdownMenuItem(
                value: 'Business ',
                child: Text('Business ')),
            DropdownMenuItem(
                value: 'First Class',
                child: Text('First Class')),
          ], onChanged: (value){}),
    ),);
  });
}
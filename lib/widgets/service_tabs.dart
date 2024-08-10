import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hover_effect_button.dart';

Widget offeredServicesTabsNavigator(
    VoidCallback onTap, String title, IconData icon, Color color) {
  return Builder(
    builder: (context) => Flexible(
      child: Container(
          width: 100,
          color: color,
          child: InkWell(
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  title,
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          )),
    ),
  );
}

// Widget tripTypeSelection(String trip, Color color) {
//   return Builder(builder: (context) {
//     return const HoverEffectButton(fontWeight: FontWeight.w200,fontSize: 13, text: ,);
//   });
// }

Widget tripSearchDisplayOption(
    double borderWidth,
    Color borderColor,
    String topRowText,
    Widget iconButton,
    String date,
    String midRowOrText,
    String day) {
  return Builder(
    builder: (context) => Container(
      decoration: BoxDecoration(
        border:
            Border(right: BorderSide(width: borderWidth, color: borderColor)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    topRowText,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                iconButton
              ],
            ),
            Row(
              children: [
                Text(
                  date,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  midRowOrText,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Text(
              day,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

Widget tripTypeSelection(String trip, Color color) {
  return Builder(builder: (context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 0.5, color: Colors.black26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(trip),
      ),
    );
  });
}

Widget tripSearchDisplayOption(dynamic? borderWidth, dynamic? topRow,
    dynamic? midRowOrText, dynamic? day) {
  //dynamic? row; // = const Row(children: [Text('text1')],);
  return Builder(
    builder: (context) => Container(
      decoration: BoxDecoration(
        border: Border(
            right: borderWidth ??
                const BorderSide(width: 0.5, color: Colors.black26)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            topRow ??
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'topRowText',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down_sharp))
                  ],
                ),
            midRowOrText ??
                Row(
                  children: [
                    Text(
                      day,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'monthYear',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
            day ??
                const Text(
                  ' Friday',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class CardWithRows extends StatefulWidget {
  final Widget headerRow;
  final Widget row1;
   final Widget? row2;

   const CardWithRows({super.key, required this.row1, required this.row2, required this.headerRow,  });

  @override
  State<CardWithRows> createState() => _CardWithRowsState();
}

ScrollController scrollController1 = ScrollController();
ScrollController scrollController2 = ScrollController();

class _CardWithRowsState extends State<CardWithRows> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 20, color: Colors.transparent),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.headerRow,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () {
                            scrollController1.animateTo(
                                scrollController1.offset - MediaQuery.of(context).size.width,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut);
                            scrollController2.animateTo(
                                scrollController2.offset - 1000,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut);
                          },
                          icon: const Icon(Icons.chevron_left),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () {
                            scrollController2.animateTo(
                                scrollController2.offset + MediaQuery.of(context).size.width,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut);
                            scrollController1.animateTo(
                                scrollController1.offset + 1000,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut);
                          },
                          icon: const Icon(Icons.chevron_right),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                controller: scrollController1,
                scrollDirection: Axis.horizontal,
                child: widget.row1,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                controller: scrollController2,
                scrollDirection: Axis.horizontal,
                child: widget.row2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

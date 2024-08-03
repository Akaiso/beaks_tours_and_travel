import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/widgets/dropdown_button.dart';
import 'package:travel_app/widgets/scroll_to_top_indicator.dart';

import '../widgets/carousel.dart';
import '../widgets/service_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollControllerHome = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    String feel = ' happy ';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white60,
        body: SingleChildScrollView(
          controller: scrollControllerHome,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 740,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('assets/images/airport.jpeg'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 24.0),
                              child: SizedBox(
                                  height: 100,
                                  width: 200,
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    fit: BoxFit.fitWidth,
                                  )),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  offeredServicesTabsNavigator(() {}, " Flight booking ",
                                      Icons.local_airport_sharp, Colors.white),
                                  offeredServicesTabsNavigator(
                                      () {},
                                      " Hotel reservation ",
                                      Icons.hotel,
                                      Colors.lightBlueAccent),
                                  offeredServicesTabsNavigator(
                                      () {},
                                      " Cruise / tour ",
                                      Icons.directions_boat_filled,
                                      Colors.green),
                                  offeredServicesTabsNavigator(
                                      () {},
                                      " Visa assistance ",
                                      Icons.library_books_rounded,
                                      Colors.yellow),
                                  offeredServicesTabsNavigator(
                                      () {},
                                      " Car Hire ",
                                      Icons.car_rental_sharp,
                                      Colors.orangeAccent),
                                  offeredServicesTabsNavigator(
                                      () => setState(() {
                                            feel = ' Sad ';
                                          }),
                                      feel,
                                      Icons.holiday_village,
                                      Colors.pink),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.person)),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 50,
                    right: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 0.5, color: Colors.black26),
                        color: Colors.white70,
                      ),
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          tripTypeSelection(
                                              'One Way', Colors.transparent),
                                          tripTypeSelection(
                                              'Round Trip', Colors.transparent),
                                          tripTypeSelection(
                                              'Multi City', Colors.transparent),

                                          //DropdownButton to select flight class
                                          flightCategorySelectionDropdown(),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                        'Book International and Domestic flights')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          //TRIP SELECTION OPTION SECTION
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black26, width: 0.5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  tripSearchDisplayOption(
                                      null,
                                      const Text(
                                        'From',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      const Text(
                                        'Select City',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text('')),
                                  tripSearchDisplayOption(
                                      null,
                                      const Text(
                                        'to',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      const Text(
                                        'Select City',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text('')),
                                  tripSearchDisplayOption(
                                      null,
                                      Row(
                                        children: [
                                          const Text('Departure',
                                              style: TextStyle(
                                                fontSize: 10,
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.arrow_drop_down_sharp))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Aug'24",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('Friday')),
                                  tripSearchDisplayOption(
                                      null,
                                      Row(
                                        children: [
                                          const Text('Return',
                                              style: TextStyle(
                                                fontSize: 10,
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.arrow_drop_down_sharp))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '4',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Aug'24",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('Sunday')),
                                  tripSearchDisplayOption(
                                      const BorderSide(
                                          // width: 0,
                                          color: Colors.transparent),
                                      Row(
                                        children: [
                                          const Text('Passenger',
                                              style: TextStyle(
                                                fontSize: 10,
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.arrow_drop_down_sharp))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Passenger",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text('')),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //MAJOR SEARCH BUTTON
                  Positioned(
                    top: 580,
                    left: MediaQuery.of(context).size.width * 0.35,
                    right: MediaQuery.of(context).size.width * 0.35,
                    child: InkWell(onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 2,
                        child: const Center(
                            child: Text(
                          'Search',
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 700,
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15,
                    child: SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 7,
                      child:  PhysicalModel(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                        child: const Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ADVERT AND OFFERS',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        )),
                      ),
                    ),
                  ),

                  // NestedScrollView(
                  //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
                  //       [
                  //     SliverAppBar(
                  //       foregroundColor: Colors.transparent,
                  //       elevation: 0,
                  //       shadowColor: Colors.transparent,
                  //       collapsedHeight: 500,
                  //       expandedHeight: 500,
                  //       clipBehavior: Clip.none,
                  //       flexibleSpace: Container(
                  //         decoration: const BoxDecoration(
                  //           color: Colors.blue,
                  //           image: DecorationImage(
                  //               image: AssetImage('assets/images/airport.jpeg'),
                  //               fit: BoxFit.cover),
                  //         ),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.symmetric(
                  //                       horizontal: 24.0, vertical: 24.0),
                  //                   child: SizedBox(
                  //                       height: 100,
                  //                       width: 200,
                  //                       child: Image.asset(
                  //                         'assets/images/logo.png',
                  //                         fit: BoxFit.fitWidth,
                  //                       )),
                  //                 ),
                  //                 SizedBox(
                  //                   width: MediaQuery.of(context).size.width * 0.6,
                  //                   height: 70,
                  //                   child: Row(
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       services(() {}, " Flight booking ",
                  //                           Icons.local_airport_sharp, Colors.white),
                  //                       services(() {}, " Hotel reservation ", Icons.hotel,
                  //                           Colors.lightBlueAccent),
                  //                       services(() {}, " Cruise / tour ",
                  //                           Icons.directions_boat_filled, Colors.green),
                  //                       services(() {}, " Visa assistance ",
                  //                           Icons.library_books_rounded, Colors.yellow),
                  //                       services(() {}, " Car Hire ",
                  //                           Icons.car_rental_sharp, Colors.orangeAccent),
                  //                       services(() {
                  //                         setState(() {
                  //                           feel = ' Sad ';
                  //                         });
                  //                       }, feel, Icons.holiday_village,
                  //                           Colors.pink),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             const SizedBox(
                  //               height: 20,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       actions: [
                  //         Padding(
                  //           padding: const EdgeInsets.only(right: 15.0),
                  //           child: CircleAvatar(
                  //             child: IconButton(
                  //                 onPressed: () {}, icon: const Icon(Icons.person)),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  //   body: SingleChildScrollView(
                  //     child: Center(
                  //       child: Column(
                  //         children: [
                  //           Stack(
                  //             children: [
                  //               Positioned(
                  //                   child: Container(
                  //                 height: 300,
                  //                 width: MediaQuery.of(context).size.width * 0.9,
                  //                 color: Colors.red,
                  //               ))
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 1000,
                color: Colors.green,child: const MultiImageCarousel(),
              ),
               Align(alignment: Alignment.bottomRight,child: Padding(
                 padding: const EdgeInsets.fromLTRB(0,0,20,40),
                 child: ScrollToTopButton(scrollController: scrollControllerHome,),
               ))
            ],
          ),
        ),
      ),
    );
  }
}

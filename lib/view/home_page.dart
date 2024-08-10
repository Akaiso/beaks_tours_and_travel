import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/controller/animations.dart';
import 'package:travel_app/utils/font.dart';
import 'package:travel_app/widgets/card_with_rows.dart';
import 'package:travel_app/widgets/dropdown_button.dart';
import 'package:travel_app/widgets/flight_offers_card.dart';
import 'package:travel_app/widgets/hover_effect_button.dart';
import 'package:travel_app/widgets/scroll_to_top_indicator.dart';

import '../widgets/carousel.dart';
import '../widgets/service_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Row flightRowRow = const Row(
  children: [
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
    FlightOffersModel(),
  ],
);



class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ScrollController scrollControllerHome = ScrollController();

  Color color = Colors.orange;
  String feel = ' happy ';
  bool isVisibleFlight = false;
  bool isVisibleHotel = false;
  bool flightRow = true;
  bool hotelRow = false;


  @override
  Widget build(BuildContext context) {

    Row hotelRowRow =  Row(
      children: [
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.blue,),
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.orange,),
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.blue,),
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.black,),
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.blue,),
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.green,),
        Container( height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.blue,),
        Container(height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,color: Colors.yellow,),

      ],
    );
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
                                  offeredServicesTabsNavigator(
                                      () {},
                                      " Flight booking ",
                                      Icons.local_airport_sharp,
                                      Colors.white),
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
                        borderRadius: BorderRadius.circular(10),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const HoverEffectButton(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 13,
                                              text: 'One Way'),
                                          const HoverEffectButton(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 13,
                                              text: 'Round Trip'),
                                          const HoverEffectButton(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 13,
                                              text: 'Multi City'),

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
                                      0.5,
                                      Colors.black26,
                                      'From',
                                      Container(),
                                      'Select City',
                                      '',
                                      ''),
                                  tripSearchDisplayOption(0.5, Colors.black26,
                                      'to', Container(), 'Select City', '', ''),
                                  tripSearchDisplayOption(
                                      0.5,
                                      Colors.black26,
                                      'Departure',
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_drop_down_sharp)),
                                      '2',
                                      "Aug'24",
                                      'Friday'),
                                  tripSearchDisplayOption(
                                      0.5,
                                      Colors.black26,
                                      'Return',
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_drop_down_sharp)),
                                      '4',
                                      "Aug'24",
                                      'Sunday'),
                                  tripSearchDisplayOption(
                                      0,
                                      Colors.transparent,
                                      'Passenger',
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_drop_down_sharp)),
                                      '1',
                                      'Passenger',
                                      ''),
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
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 2,
                        child: Center(
                            child: Text(
                          'Search',
                          style: whiteSubtitle(),
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
                      child: PhysicalModel(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ADVERT AND OFFERS',
                              style: title(),

                              // TextStyle(
                              //     letterSpacing: 1,
                              //     fontSize: 30,
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w900),
                            )
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              //Carousel Slider
              const MultiImageCarousel(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 300,
                  width: 500,
                  color: Colors.yellow,
                ),
              ),
              const FlightOffersModel(),
              const SizedBox(
                height: 30,
              ),
              CardWithRows(
                headerRow: Row(
                  children: [
                    Text(
                      'Offers',
                      style: subtitle(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 80,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            flightRow = true;
                            hotelRow = false;
                          });
                        },
                        child: MouseRegion(
                          onEnter: (_){
                            setState(() {
                              isVisibleFlight = true;
                            });
                          },
                          onExit: (_){
                            setState(() {
                              isVisibleFlight = false;
                            });

                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Flight',
                                style: isVisibleFlight? blueNormal():normal(),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Visibility(
                                visible: isVisibleFlight,
                                child: Container(
                                  height: 3,
                                  width: double.infinity,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 80,
                      child: InkWell(
                        onTap: (){
                          hotelRow = false;
                          flightRow = false;
                        },
                        child: MouseRegion(
                          onEnter: (_) {
                            setState(() {});
                            isVisibleHotel = true;
                          },
                          onExit: (_) {
                            setState(() {});
                            isVisibleHotel = false;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hotel',
                                style: isVisibleHotel? blueNormal():normal(),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Visibility(
                                visible: isVisibleHotel,
                                child: Container(
                                  color: Colors.blue,
                                  height: 3,
                                  width: double.infinity,
                                ),
                              )

                              //  Container(height: 3,width: double.infinity, color: Colors.blue,child: hoverFillAnimation,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Column(),
                  ],
                ),
                row1: flightRow? flightRowRow : hotelRowRow,

                // const Row(
                //   children: [
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //   ],
                // ),
                row2: flightRow? flightRowRow : hotelRowRow,

                // const Row(
                //   children: [
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //     FlightOffersModel(),
                //   ],
                // ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 40),
                  child: ScrollToTopButton(
                    scrollController: scrollControllerHome,
                  ),
                ),
              ),
              const HoverFillAnimation(
                startColor: Colors.transparent,
                endColor: Colors.orange,
                child: SizedBox(
                  height: 50, width: 50,
                  //width: double.infinity,
                  // color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}

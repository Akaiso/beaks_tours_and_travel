import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/controller/animations.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/font.dart';
import 'package:travel_app/widgets/card_with_double_rows.dart';
import 'package:travel_app/widgets/card_with_single_row.dart';
import 'package:travel_app/widgets/card_with_two_sections.dart';
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
  late Color flightColor;
  late Color hotelColor ;
  bool flightRow = true;
  bool hotelRow = false;
  Color textHoverColor1 = Colors.black;
  Color textHoverColor2 = Colors.black;
  Color textHoverColor3 = Colors.black;

  //external
  bool _isFlightSelected = true; // initially, flight is selected by default
  bool _isFlightHovered = false;
  bool _isHotelHovered = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flightColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    Row hotelRowRow = Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.blue,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.orange,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.blue,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.black,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.blue,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.green,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.blue,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          width: MediaQuery.of(context).size.width * 0.125,
          color: Colors.yellow,
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: scrollControllerHome,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width < 800? 480 : 740,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('assets/images/airport2.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
                                      child: SizedBox(
                                        height: 100,
                                        width:
                                            MediaQuery.of(context).size.width <
                                                    800
                                                ? 80
                                                : 200,
                                        child:
                                            MediaQuery.of(context).size.width <
                                                    800
                                                ? Image.asset(
                                                    'assets/images/standalonelogo.png',
                                                    fit: BoxFit.scaleDown,
                                                  )
                                                : Image.asset(
                                                    'assets/images/logo.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
                                  Expanded(
                                    flex:
                                        MediaQuery.of(context).size.width < 800
                                            ? 1
                                            : 3,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      child: MediaQuery.of(context).size.width <
                                              800
                                          ? const SizedBox()
                                          : Row(
                                              //mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                offeredServicesTabsNavigator(
                                                    () {},
                                                    " Flight ",
                                                    'assets/images/flight.png',
                                                    Colors.white),
                                                offeredServicesTabsNavigator(
                                                    () {},
                                                    " Stays ",
                                                    "assets/images/hotel.png",
                                                    Colors.white),
                                                offeredServicesTabsNavigator(
                                                    () {},
                                                    " Cruise ",
                                                    "assets/images/cruise.png",
                                                    Colors.white),
                                                offeredServicesTabsNavigator(
                                                    () {},
                                                    " Visa ",
                                                    "assets/images/visa.png",
                                                    Colors.white),
                                                offeredServicesTabsNavigator(
                                                    () {},
                                                    " Rides ",
                                                    'assets/images/rides.png',
                                                    Colors.white),
                                                offeredServicesTabsNavigator(
                                                    () {},
                                                    " Holidays",
                                                    'assets/images/holiday.png',
                                                    Colors.white),
                                              ],
                                            ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: MediaQuery.of(context).size.width <
                                              800
                                          ? 3
                                          : 1,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  800
                                              ? 250
                                              : 100,
                                          height: 100,
                                          child: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  800
                                              ? Container(
                                                  color: Colors.transparent,
                                                  width: 700,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      const Expanded(
                                                          child:
                                                              MyAccountDropdown()),
                                                      Expanded(
                                                        child: IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(
                                                              Icons.menu,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              : const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: LanguageDropdown(),
                                                    ),
                                                    Expanded(
                                                        child:
                                                            MyAccountDropdown())
                                                  ],
                                                ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Visibility(
                              replacement: const SizedBox(),
                              visible: MediaQuery.of(context).size.width < 800
                                  ? true
                                  : false,
                              child: Center(
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  spacing: 4,
                                  runSpacing: 4,
                                  children: [
                                    offeredServicesTabsNavigator(
                                        () {},
                                        " Flight ",
                                        'assets/images/flight.png',
                                        Colors.white),
                                    offeredServicesTabsNavigator(
                                        () {},
                                        " Hotel ",
                                        "assets/images/hotel.png",
                                        Colors.white),
                                    offeredServicesTabsNavigator(
                                        () {},
                                        " Cruise ",
                                        "assets/images/cruise.png",
                                        Colors.white),
                                    offeredServicesTabsNavigator(
                                        () {},
                                        " Visa ",
                                        "assets/images/visa.png",
                                        Colors.white),
                                    offeredServicesTabsNavigator(
                                        () {},
                                        " Rides ",
                                        'assets/images/rides.png',
                                        Colors.white),
                                    offeredServicesTabsNavigator(
                                        () {},
                                        " Holiday",
                                        'assets/images/holiday.png',
                                        Colors.white),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    replacement: const SizedBox(),
                    visible:
                        MediaQuery.of(context).size.width < 800 ? false : true,
                    child: Positioned(
                      top: 300,
                      left: 50,
                      right: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.black26),
                          color: Colors.white70,
                        ),
                        height: 310, //MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        child: const FittedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              HoverEffectButton(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 13,
                                                  text: 'One Way'),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              HoverEffectButton(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 13,
                                                  text: 'Round Trip'),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              HoverEffectButton(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 13,
                                                  text: 'Multi City'),
                                              SizedBox(
                                                width: 10,
                                              ),

                                              //DropdownButton to select flight class
                                              FlightCategorySelectionDropdown(),
                                            ],
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          child: const Text(
                                              'Book International and Domestic flights'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              //TRIP SELECTION OPTION SECTION
                              Container(
                                height: MediaQuery.of(context).size.height / 4,
                                width: double.infinity, //140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black26, width: 0.5),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: tripSearchDisplayOption(
                                            0.5,
                                            Colors.black26,
                                            'From',
                                            Container(),
                                            'Select City',
                                            '',
                                            ''),
                                      ),
                                      Expanded(
                                        child: tripSearchDisplayOption(
                                            0.5,
                                            Colors.black26,
                                            'to',
                                            Container(),
                                            'Select City',
                                            '',
                                            ''),
                                      ),
                                      Expanded(
                                        child: tripSearchDisplayOption(
                                            0.5,
                                            Colors.black26,
                                            'Departure',
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons
                                                    .arrow_drop_down_sharp)),
                                            '2',
                                            "Aug'24",
                                            'Friday'),
                                      ),
                                      Expanded(
                                        child: tripSearchDisplayOption(
                                            0.5,
                                            Colors.black26,
                                            'Return',
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons
                                                    .arrow_drop_down_sharp)),
                                            '4',
                                            "Aug'24",
                                            'Sunday'),
                                      ),
                                      Expanded(
                                        child: tripSearchDisplayOption(
                                            0,
                                            Colors.transparent,
                                            'Passenger',
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons
                                                    .arrow_drop_down_sharp)),
                                            '1',
                                            'Passenger',
                                            ''),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //MAJOR SEARCH BUTTON
                  Visibility(
                    replacement: const SizedBox(),
                    visible:
                        MediaQuery.of(context).size.width < 800 ? false : true,
                    child: Positioned(
                      top:
                          580, //MediaQuery.of(context).size.width < 1000 ? 555 : 590,
                      left: MediaQuery.of(context).size.width * 0.40,
                      right: MediaQuery.of(context).size.width * 0.40,
                      child: const SizedBox(
                        height: 50,
                        child: HoverEffectButton(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          text: 'Search',
                        ),
                      ),
                    ),
                  ),

                  Visibility(
                    visible:
                        MediaQuery.of(context).size.width < 800 ? false : true,
                    replacement: Positioned(
                      top: 380,
                      right: 10,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              height: 60,
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    textHoverColor1 = Colors.blue;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    textHoverColor1 = Colors.black;
                                  });
                                },
                                child: ListTile(
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: (Image.asset(
                                        'assets/images/luggage.png')),
                                  ),
                                  title: Text(
                                    'Holiday Escape',
                                    style: TextStyle(
                                        color: textHoverColor1,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  isThreeLine: true,
                                  subtitle: FittedBox(
                                      child: Text(
                                          style: TextStyle(
                                            color: textHoverColor1,
                                          ),
                                          "Have you always wanted a place to 'japa' to and just \n lay back? we have special offers here")),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              height: 60,
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    textHoverColor2 = Colors.blue;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    textHoverColor2 = Colors.black;
                                  });
                                },
                                child: ListTile(
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  leading: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Image.asset(
                                          'assets/images/wallet.png')),
                                  title: Text(
                                    'Pay Small Small',
                                    style: TextStyle(
                                        color: textHoverColor2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  isThreeLine: true,
                                  subtitle: FittedBox(
                                      child: Text(
                                          style:
                                              TextStyle(color: textHoverColor2),
                                          "Secure best travel deals and pay in convenient \n installments               ")),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              height: 60,
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    textHoverColor3 = Colors.blue;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    textHoverColor3 = Colors.black;
                                  });
                                },
                                child: ListTile(
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  leading: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Image.asset(
                                        'assets/images/map.png',
                                      )),
                                  title: Text(
                                    'Travel Guide',
                                    style: TextStyle(
                                        color: textHoverColor3,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  isThreeLine: true,
                                  subtitle: FittedBox(
                                      child: Text(
                                          style:
                                              TextStyle(color: textHoverColor3),
                                          "Travel like a pro ; don't look like a first timer \n ")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    child: Positioned(
                      top: 700,
                      left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.1,
                      child: SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 7,
                        child: PhysicalModel(
                          elevation: 10,
                          shadowColor: Colors.black45,
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          child: Center(
                              child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 300,
                                  height: 60,
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        textHoverColor1 = Colors.blue;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        textHoverColor1 = Colors.black;
                                      });
                                    },
                                    child: ListTile(
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      onTap: () {},
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: (Image.asset(
                                            'assets/images/luggage.png')),
                                      ),
                                      title: Text(
                                        'Holiday Escape',
                                        style: TextStyle(
                                            color: textHoverColor1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      isThreeLine: true,
                                      subtitle: FittedBox(
                                          child: Text(
                                              style: TextStyle(
                                                color: textHoverColor1,
                                              ),
                                              "Have you always wanted a place to 'japa' to without \n breaking the bank, we have special offers here")),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  color: Colors.black26,
                                  height: 70,
                                ),
                                SizedBox(
                                  width: 300,
                                  height: 60,
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        textHoverColor2 = Colors.blue;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        textHoverColor2 = Colors.black;
                                      });
                                    },
                                    child: ListTile(
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      onTap: () {},
                                      leading: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                              'assets/images/wallet.png')),
                                      title: Text(
                                        'Pay Small Small',
                                        style: TextStyle(
                                            color: textHoverColor2,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      isThreeLine: true,
                                      subtitle: FittedBox(
                                          child: Text(
                                              style: TextStyle(
                                                  color: textHoverColor2),
                                              "Secure best travel deals and pay in convenient \n installments               ")),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  color: Colors.black26,
                                  height: 70,
                                ),
                                SizedBox(
                                  width: 300,
                                  height: 60,
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        textHoverColor3 = Colors.blue;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        textHoverColor3 = Colors.black;
                                      });
                                    },
                                    child: ListTile(
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      onTap: () {},
                                      leading: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            'assets/images/map.png',
                                          )),
                                      title: Text(
                                        'Travel Guide',
                                        style: TextStyle(
                                            color: textHoverColor3,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      isThreeLine: true,
                                      subtitle: FittedBox(
                                          child: Text(
                                              style: TextStyle(
                                                  color: textHoverColor3),
                                              "Travel like a pro ; don't look like a first timer \n ")),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: MediaQuery.of(context).size.width < 800? 120: 50,
              ),

              //Carousel Slider TODO CAROUSEL SLIDER
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: MultiImageCarousel(),
              ),

              const SizedBox(
                height: 30,
              ),

              ///Card with Double Rows
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CardWithDoubleRows(
                  headerRow: SizedBox( width: MediaQuery.of(context).size.width / 3,
                    child: MediaQuery.of(context).size.width < 800? Column(
                      children: [
                        Text(
                          'Offers',
                          style: boldNormal(), //subtitle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          MouseRegion(
                            onEnter: (_)=> setState(() {
                              _isFlightHovered = true;
                            }),
                            onExit: (_)=> setState(() {
                              _isFlightHovered = false;
                            }),
                            child: Container(width: 80,
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _isFlightSelected = true;
                                  });
                                },
                                child: Column(
                                    children: [
                                      Text('Flights', style: TextStyle(color: (_isFlightSelected || _isFlightHovered) ? Colors.orange : Colors.blue),),
                                      AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          height: 2,
                                          color: (_isFlightSelected || _isFlightHovered) ? Colors.orange : Colors.transparent,
                                          margin: EdgeInsets.only(top: 4)
                                      )
                                    ]
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) => setState(() {
                              _isHotelHovered = true;
                            }),
                            onExit: (_)=> setState(() {
                              _isHotelHovered = false;
                            }),
                            child: Container(width: 80,
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _isFlightSelected = false;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text('Hotel', style: TextStyle(color: (!_isFlightSelected || _isHotelHovered)? Colors.orange : Colors.blue),),
                                    AnimatedContainer(duration: Duration(milliseconds: 300),
                                      height: 2,
                                      color: (!_isFlightSelected || _isHotelHovered)? Colors.orange : Colors.transparent,
                                      margin: EdgeInsets.only(top: 4),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],),


                        // SizedBox(
                        //   width: 80,
                        //   child: InkWell(
                        //     onTap: () {
                        //       setState(() {
                        //         flightRow = true;
                        //         hotelRow = false;
                        //
                        //       });
                        //     },
                        //     child: MouseRegion(
                        //       onEnter: (_) {
                        //         setState(() {
                        //           isVisibleFlight = true;
                        //         });
                        //       },
                        //       onExit: (_) {
                        //         setState(() {
                        //           isVisibleFlight = false;
                        //         });
                        //       },
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Text(
                        //             'Flight',
                        //             style: TextStyle(color: flightBlueColor),
                        //               //  isVisibleFlight  ? blueNormal() : normal(),
                        //           ),
                        //           const SizedBox(
                        //             height: 10,
                        //           ),
                        //           Visibility(
                        //             visible: isVisibleFlight,
                        //             child: Container(
                        //               height: 3,
                        //               width: double.infinity,
                        //               color: Colors.blue,
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        // SizedBox(
                        //   width: 80,
                        //   child: InkWell(
                        //     onTap: () {
                        //       hotelRow = false;
                        //       flightRow = false;
                        //       setState(() {
                        //         hotelColor = Colors.blue;
                        //       });
                        //
                        //     },
                        //     child: MouseRegion(
                        //       onEnter: (_) {
                        //         setState(() {});
                        //         isVisibleHotel = true;
                        //         hotelColor = Colors.blue;
                        //       },
                        //       onExit: (_) {
                        //         setState(() {});
                        //         isVisibleHotel = false;
                        //         hotelColor = Colors.black;
                        //       },
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Text(
                        //             'Hotel',
                        //             style: TextStyle(color: hotelColor)
                        //               //  isVisibleHotel ? blueNormal() : normal(),
                        //           ),
                        //           const SizedBox(
                        //             height: 10,
                        //           ),
                        //           Visibility(
                        //             visible: isVisibleHotel,
                        //             child: Container(
                        //               color: Colors.blue,
                        //               height: 3,
                        //               width: double.infinity,
                        //             ),
                        //           )
                        //
                        //           //  Container(height: 3,width: double.infinity, color: Colors.blue,child: hoverFillAnimation,),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        const Column(),
                      ],
                    ) :

                    Row(
                      children: [
                        Text(
                          'Offers',
                          style: subtitle(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        MouseRegion(
                          onEnter: (_)=> setState(() {
                            _isFlightHovered = true;
                          }),
                          onExit: (_)=> setState(() {
                            _isFlightHovered = false;
                          }),
                          child: Container(width: 80,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isFlightSelected = true;
                                });
                              },
                              child: Column(
                                children: [
                                  Text('Flights', style: TextStyle(color: (_isFlightSelected || _isFlightHovered) ? Colors.orange : Colors.blue),),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: 2,
                                    color: (_isFlightSelected || _isFlightHovered) ? Colors.orange : Colors.transparent,
                                    margin: EdgeInsets.only(top: 4)
                                  )
                                ]
                              ),
                                                      ),
                          ),
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() {
                            _isHotelHovered = true;
                          }),
                          onExit: (_)=> setState(() {
                            _isHotelHovered = false;
                          }),
                          child: Container(width: 80,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isFlightSelected = false;
                                });
                              },
                              child: Column(
                                children: [
                                  Text('Hotel', style: TextStyle(color: (!_isFlightSelected || _isHotelHovered)? Colors.orange : Colors.blue),),
                                  AnimatedContainer(duration: Duration(milliseconds: 300),
                                  height: 2,
                                  color: (!_isFlightSelected || _isHotelHovered)? Colors.orange : Colors.transparent,
                                  margin: EdgeInsets.only(top: 4),)
                                ],
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(
                        //   width: 80,
                        //   child: InkWell(
                        //     onTap: () {
                        //       setState(() {
                        //         flightRow = true;
                        //         hotelRow = false;
                        //
                        //       });
                        //     },
                        //     child: MouseRegion(
                        //       onEnter: (_) {
                        //         setState(() {
                        //           isVisibleFlight = true;
                        //         });
                        //       },
                        //       onExit: (_) {
                        //         setState(() {
                        //           isVisibleFlight = false;
                        //         });
                        //       },
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Text(
                        //             'Flight',
                        //             style: TextStyle(color: flightBlueColor),
                        //               //  isVisibleFlight  ? blueNormal() : normal(),
                        //           ),
                        //           const SizedBox(
                        //             height: 10,
                        //           ),
                        //           Visibility(
                        //             visible: isVisibleFlight,
                        //             child: Container(
                        //               height: 3,
                        //               width: double.infinity,
                        //               color: Colors.blue,
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        // SizedBox(
                        //   width: 80,
                        //   child: InkWell(
                        //     onTap: () {
                        //       hotelRow = false;
                        //       flightRow = false;
                        //       setState(() {
                        //         hotelColor = Colors.blue;
                        //       });
                        //
                        //     },
                        //     child: MouseRegion(
                        //       onEnter: (_) {
                        //         setState(() {});
                        //         isVisibleHotel = true;
                        //         hotelColor = Colors.blue;
                        //       },
                        //       onExit: (_) {
                        //         setState(() {});
                        //         isVisibleHotel = false;
                        //         hotelColor = Colors.black;
                        //       },
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Text(
                        //             'Hotel',
                        //             style: TextStyle(color: hotelColor)
                        //               //  isVisibleHotel ? blueNormal() : normal(),
                        //           ),
                        //           const SizedBox(
                        //             height: 10,
                        //           ),
                        //           Visibility(
                        //             visible: isVisibleHotel,
                        //             child: Container(
                        //               color: Colors.blue,
                        //               height: 3,
                        //               width: double.infinity,
                        //             ),
                        //           )
                        //
                        //           //  Container(height: 3,width: double.infinity, color: Colors.blue,child: hoverFillAnimation,),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        const Column(),
                      ],
                    ),
                  ),
                  row1: _isFlightSelected? flightRowRow : hotelRowRow, //flightRow ? flightRowRow : hotelRowRow,

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
                  row2: _isFlightSelected? flightRowRow : hotelRowRow, //flightRow ? flightRowRow : hotelRowRow,

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
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CardWithDoubleSection(
                  firstSection: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            'Get the Trip Guard app',
                            style: title(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            'Download our Mobile App free today to book your flights, hotels, \n and visas'
                            'and get amazing deals on the go'),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 35,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      hintText: 'Enter your email address',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2),
                                      )),
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              child: Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width / 12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.orange,
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text('Send App Link',
                                        style: whiteNormal()),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  secondSection: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: Image.asset(
                                      'assets/images/playstore.png')),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: Image.asset(
                                      'assets/images/appstore.png')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            height:
                                180, //MediaQuery.of(context).size.height * 0.2 ,
                            width: MediaQuery.of(context).size.width * 0.12,
                            child: Image.asset('assets/images/qrcode.png'))
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CardWithSingleRow(
                  headerRow: FittedBox(
                    child: Text(
                      'Explore Hotels in trending Destinations',
                      style: title(),
                    ),
                  ),
                  row1: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: 230,
                            child: Image.asset('assets/images/flatt1.jpg'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: 230,
                            child: Image.asset('assets/images/flatt2.jpg'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: 230,
                            child: Image.asset('assets/images/flatt1.jpg'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: 230,
                            child: Image.asset('assets/images/flatt2.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CardWithDoubleSection(
                    firstSection: SizedBox(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset('assets/images/dubaiwaterline.jpeg'),
                    ),
                    secondSection: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'Subscribe to travel deals',
                              style: title(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                              "Like travel deals,enter your email and we'll send them your way', \n and visas and get amazing deals on the go"),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  height: 35,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        hintText: 'Enter your email address',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        )),
                                  )),
                              const SizedBox(
                                width: 30,
                              ),
                              InkWell(
                                child: Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width / 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                      child: Text('Send App Link',
                                          style: whiteNormal())),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              tripSearchDisplayOption(0.5, Colors.black26, 'From', Container(),
                  'Select City', '', ''),

              const SizedBox(
                height: 300,
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
            ],
          ),
        ),
      ),
    );
  }
}

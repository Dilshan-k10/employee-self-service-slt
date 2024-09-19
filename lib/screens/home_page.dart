import 'package:flutter/material.dart';
import 'package:sltapp/screens/absence_page.dart';
import 'package:sltapp/screens/ams_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sltapp/screens/movement_register_page.dart';
import 'package:sltapp/screens/recent_timecard_page.dart';

import '../reusables/app_drawer.dart';
import '../reusables/tile_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'images/sltlogo.png',
            ),
          ),
        ],
        title: const Text('SLT Employee Self Service'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        reverse: false,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                // Row(
                //   children: [
                //     NavigationBarButton(
                //       title: 'dvdvsdvsdv',
                //       onTap: () {},
                //     ),
                //     NavigationBarButton(
                //       title: 'dvdvsdvsdv',
                //       onTap: () {},
                //     ),
                //     NavigationBarButton(
                //       title: 'dvdvsdvsdv',
                //       onTap: () {},
                //     ),
                //     NavigationBarButton(
                //       title: 'dvdvsdvsdv',
                //       onTap: () {},
                //     )
                //   ],
                // )
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TileButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AMSPage(),
                              ),
                            );
                          },
                          title: 'AMS',
                          icon: FontAwesomeIcons.userClock,
                        ),
                      ),
                      Expanded(
                        child: TileButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RecentTimecardPage(),
                              ),
                            );
                          },
                          title: 'Recent Timecards',
                          icon: FontAwesomeIcons.calendarCheck,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TileButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AbsencePage(),
                              ),
                            );
                          },
                          title: 'Absence',
                          icon: FontAwesomeIcons.calendarXmark,
                        ),
                      ),
                      Expanded(
                        child: TileButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MovementRegisterPage(),
                              ),
                            );
                          },
                          title: 'Movement Register',
                          icon: FontAwesomeIcons.calendarPlus,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

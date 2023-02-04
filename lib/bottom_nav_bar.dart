import 'package:flutter/material.dart';
import 'package:ui_ux/pages/calendar_screen.dart';
import 'package:ui_ux/pages/home_screen.dart';
import 'package:ui_ux/pages/notification_screen.dart';
import 'package:ui_ux/pages/patient_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int pageStatus = 0;
  final screens = [
    HomePage(),
    PatientPage(),
    CalendarPage(),
    NotificationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageStatus,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: pageStatus,
        onTap: (index) {
          setState(() {
            pageStatus = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: pageStatus == 0
                  ? Icon(
                      Icons.home,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.home_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: pageStatus == 1
                  ? Icon(
                      Icons.group,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.group_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'patient'),
          BottomNavigationBarItem(
              icon: pageStatus == 2
                  ? Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'calendar'),
          BottomNavigationBarItem(
              icon: pageStatus == 3
                  ? Badge(
                      label: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    )
                  : Badge(
                      label: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey.shade700,
                      ),
                    ),
              label: 'notifications'),
        ],
      ),
    );
  }
}

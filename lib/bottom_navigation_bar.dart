import 'package:enfin_libre/badge_FourthSCR.dart';
import 'package:enfin_libre/calender_ThirdSCR.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomeScreen.dart';
import 'custom_items.dart';
import 'Walkthrough/fram_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(469, 1036),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SkippableScreen(),
        );
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),          // Home
    RewardScreenCard(),         // Reward
    const CalenderScreen(),           // Calendar
    const BadgeScreen(),              // Badge
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7EFFF),
      body: pages[_selectedIndex],

      // Display selected screen
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(60.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.r,
              blurRadius: 10.r,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.r),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF1D4184),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 16.sp,
          unselectedFontSize: 16.sp,

          onTap: _onItemTapped, // Call function on tap

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _selectedIndex == 0 ? const Color(0xFF1D4184) : Colors.grey),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events,
                  color: _selectedIndex == 1 ? const Color(0xFF1D4184) : Colors.grey),
              label: 'Reward',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined,
                  color: _selectedIndex == 2 ? const Color(0xFF1D4184) : Colors.grey),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.medal,
                  color: _selectedIndex == 3 ? const Color(0xFF1D4184) : Colors.grey),
              label: 'Badge',
            ),
          ],
        ),
      ),
    );
  }
}

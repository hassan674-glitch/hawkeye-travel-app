import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/config/AppColors.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/pages/guide_page.dart';
import 'package:travel_app/pages/wallet_screen.dart';
import 'chart_page.dart';
import 'myhomepage.dart';




class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
     const MyHomePage(),
    const Wallet(),
    const GuidePage(),
    const ChartPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: AppColors.primaryColor,
        elevation: 100,
        showSelectedLabels: true,
        fixedColor: const Color(0xffFFFFFF),
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items:  [
          BottomNavigationBarItem(
            icon:SvgPicture.asset(
              SvgAssets.home,
              colorFilter: const ColorFilter.mode(AppColors.fadeTxtColor, BlendMode.srcIn),
            ),
          label: "Home"
          ),

          BottomNavigationBarItem(
            icon:SvgPicture.asset(
              SvgAssets.cart,
            ),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(
              SvgAssets.guide,
            ),
            label: "Guide",
          ),
          BottomNavigationBarItem(
            icon:SvgPicture.asset(
              SvgAssets.gallery,

            ),
            label: "Chart",
          ),

       ]
      ),
    );
  }
}









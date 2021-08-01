import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelkuy_lesson/constants/color_constant.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  const BottomNavigationTravelkuy({Key? key}) : super(key: key);

  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;

  var bottomTextStyle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new SvgPicture.asset(_selectedIndex == 0
                ? 'assets/icons/home_colored.svg'
                : 'assets/icons/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new SvgPicture.asset(_selectedIndex == 1
                ? 'assets/icons/order_colored.svg'
                : 'assets/icons/order.svg'),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: new SvgPicture.asset(_selectedIndex == 2
                ? 'assets/icons/watch_colored.svg'
                : 'assets/icons/watch.svg'),
            label: 'Watch List',
          ),
          BottomNavigationBarItem(
            icon: new SvgPicture.asset(_selectedIndex == 3
                ? 'assets/icons/account_colored.svg'
                : 'assets/icons/account.svg'),
            label: 'Home',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mGreyColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}

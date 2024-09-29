import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fdelivery/pages/order.dart';
import 'package:fdelivery/pages/profile.dart';
import 'package:fdelivery/pages/wallet.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndext = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage =home();
    order =Order();
    profile=Profile();
    wallet=Wallet();
    pages=[homepage,order,profile,wallet];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentIndext = index;
          });
        },
        items:  [
          Icon(Icons.home_outlined, color: Colors.white,),
          Icon(Icons.shopping_bag_outlined, color: Colors.white,),
          Icon(Icons.wallet_outlined, color: Colors.white,),
          Icon(Icons.person_outline, color: Colors.white,),
        ],
      ),
      body: pages[currentIndext],
    );
  }
}

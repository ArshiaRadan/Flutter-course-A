
import 'package:flutter/material.dart';
import 'package:flutter_course_a/ui/Homepage.dart';
import 'package:flutter_course_a/ui/MarketViewPage.dart';
import 'package:flutter_course_a/ui/ProfilePage.dart';
import 'package:flutter_course_a/ui/WatchListPage.dart';
import 'package:flutter_course_a/ui/ui_helper/BottomNav.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {

  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.compare_arrows_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(controller: _myPage,),
      body: PageView(
        controller: _myPage,
        children: [
          HomePage(),
          MarketViewPage(),
          ProfilePage(),
          WatchListPage()
        ],
      ),
    );
  }
}

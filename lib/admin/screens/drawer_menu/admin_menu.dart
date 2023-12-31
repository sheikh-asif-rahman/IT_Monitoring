import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:labaid_project/admin/screens/components/dashboard.dart';
import 'package:labaid_project/admin/screens/components/profile.dart';
import 'package:labaid_project/admin/screens/components/user.dart';

class AdminMenu extends StatefulWidget {
  const AdminMenu({super.key});

  @override
  State<AdminMenu> createState() => _AdminMenuState();
}

class _AdminMenuState extends State<AdminMenu> {
  //this list contains all pages
  List<ScreenHiddenDrawer> _list = [];
  //drawer unselected menu text color//
  final textstyle1 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black45,
  );
  //drawer selected menu text color//
  final textstyle2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.pinkAccent,
  );
  @override
  void initState() {
    super.initState();
    _list = [
      //first page of drawer-----dashboard//
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Dashboard",
            baseStyle: textstyle1,
            selectedStyle: textstyle2,
            colorLineSelected: Colors.indigoAccent,
          ),
          AdminDashboard()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Profile",
            baseStyle: textstyle1,
            selectedStyle: textstyle2,
            colorLineSelected: Colors.indigoAccent,
          ),
          UserProfile()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "User and Rules",
            baseStyle: textstyle1,
            selectedStyle: textstyle2,
            colorLineSelected: Colors.indigoAccent,
          ),
          User()),
      
    ];
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: HiddenDrawerMenu(
        isTitleCentered: true,
        styleAutoTittleName: const TextStyle(fontSize: 35),
        backgroundColorMenu: Colors.teal.shade100,
        backgroundColorAppBar: Colors.deepPurpleAccent,
        screens: _list,
        initPositionSelected: 2,
        verticalScalePercent: height * 0.12,

        // ? is for TRUE and : is for FALSE
        slidePercent: width < 800
            ? width < 600
                ? 40
                : 30
            : 18,
      ),
    );
  }
}

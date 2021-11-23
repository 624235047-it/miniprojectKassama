import 'package:flutter/material.dart';
import 'package:miniprojectkassama/src/configs/app_route.dart';
class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[
    Menu(
      iconColor: Colors.pink,
      title: 'Profile',
      icon: Icons.person,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.infoRoute);
      },
    ),
    Menu(
      iconColor: Colors.pink,
      title: 'ประเภทห้องเช่า',
      icon: Icons.home,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomtypeRoutr);
      },
    ),
    Menu(
      iconColor: Colors.pink,
      title: 'เปรียบเทียบราคาห้องเช่า',
      icon: Icons.money_off,
      onTap: (context) {
        //Navigator.pushNamed(context, Constant.mapRoute);
      },
    ),
    Menu(
      iconColor: Colors.pink,
      title: 'เพิ่มห้องเช่า',
      icon: Icons.add,
      onTap: (context) {
        //todo
      },
    ),
  ];
}
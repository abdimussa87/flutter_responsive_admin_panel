import 'package:admin/screens/sidebar/widegts/drawer_item.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerItem(
              title: "Dashboard",
              svgSrc: 'assets/icons/menu_dashbord.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Transaction",
              svgSrc: 'assets/icons/menu_tran.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Task",
              svgSrc: 'assets/icons/menu_task.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Documents",
              svgSrc: 'assets/icons/menu_doc.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Store",
              svgSrc: 'assets/icons/menu_store.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Notification",
              svgSrc: 'assets/icons/menu_notification.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Profile",
              svgSrc: 'assets/icons/menu_profile.svg',
              onTap: () {},
            ),
            DrawerItem(
              title: "Settings",
              svgSrc: 'assets/icons/menu_setting.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

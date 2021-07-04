import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/dashborad/dashboard_screen.dart';
import 'package:admin/screens/sidebar/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: Sidebar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: Sidebar(),
              ),
            Expanded(
              flex: 5,
              child: DashBoardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

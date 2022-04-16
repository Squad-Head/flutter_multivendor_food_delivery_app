import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_admin/presentation/dashboard/dashboard_screen.dart';
import 'package:multivendor_food_delivery_admin/presentation/responsive.dart';

import '../components/side_menu.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? AppBar()
          : null,
      drawer: Drawer(
        child: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? const SideMenu()
            : null,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Responsive.isDesktop(context)
                ? const Expanded(
                    child: SideMenu(),
                  )
                : Container(),
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

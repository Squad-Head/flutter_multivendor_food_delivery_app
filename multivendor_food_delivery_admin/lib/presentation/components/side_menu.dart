import 'package:flutter/material.dart';
import 'package:multivendor_food_delivery_admin/presentation/components/drawer_list_tile.dart';
import 'package:multivendor_food_delivery_admin/presentation/constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      elevation: 0.0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "Food Delivery",
                ),
              ),
            ),
            DrawerListTile(
              title: "Dashboard",
              icon: Icons.dashboard,
              onPress: () {},
            ),
            DrawerListTile(
              title: "Orders",
              icon: Icons.shopping_cart,
              onPress: () {},
            ),
            DrawerListTile(
              title: "Products",
              icon: Icons.sell,
              onPress: () {},
            ),
            DrawerListTile(
              title: "Sellers",
              icon: Icons.badge,
              onPress: () {},
            ),
            DrawerListTile(
              title: "Offers",
              icon: Icons.offline_pin_rounded,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

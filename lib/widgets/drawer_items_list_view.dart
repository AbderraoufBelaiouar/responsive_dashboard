import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: "Dashboard",
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: "My Transction",
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: "Statistics",
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: "My Investments",
      image: Assets.imagesMyInvestments,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: drawerItems[index],
            isActive: selectedIndex == index,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: UserInfoListTile(
                    model: UserInfoModel(
                        image: Assets.imagesAvatar3,
                        title: "Ahmed zater bilal",
                        subTitle: "billal kali kn@gmail.com"))),
            DrawerItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: "Settings"),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: "Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

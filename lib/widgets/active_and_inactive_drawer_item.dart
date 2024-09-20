import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(drawerItemModel.title),
        titleTextStyle: AppStyles.styleBold16);
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 20),
      trailing: Container(
        width: 2,
        color: const Color(0xFF4EB7F2),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title),
      titleTextStyle:
          AppStyles.styleBold16.copyWith(color: const Color(0xFF4EB7F2)),
    );
  }
}

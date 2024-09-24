import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LastTransactionListView extends StatelessWidget {
  const LastTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1, title: "title", subTitle: "subTitle"),
    UserInfoModel(
        image: Assets.imagesAvatar1, title: "title", subTitle: "subTitle"),
    UserInfoModel(
        image: Assets.imagesAvatar1, title: "title", subTitle: "subTitle"),
    UserInfoModel(
        image: Assets.imagesAvatar1, title: "title", subTitle: "subTitle"),
    UserInfoModel(
        image: Assets.imagesAvatar1, title: "title", subTitle: "subTitle"),
    UserInfoModel(
        image: Assets.imagesAvatar1, title: "title", subTitle: "subTitle"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              model: items[index],
            ),
          );
        },
      ),
    );
  }
}

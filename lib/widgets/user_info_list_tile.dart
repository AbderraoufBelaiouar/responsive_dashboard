import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.model,
  });
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(model.image),
          title: Text(model.title),
          titleTextStyle: AppStyles.styleSemiBold16,
          subtitle: Text(model.subTitle),
          subtitleTextStyle: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}

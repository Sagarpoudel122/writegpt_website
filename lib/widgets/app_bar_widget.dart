import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/utils/app_constant.dart';
import 'package:writegpt_website/utils/asset_utils.dart';
import 'package:writegpt_website/widgets/navlink.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 64,
        width: AppConstant.maxAppWidth,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.appbarBorderBottom),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Image.asset(
                AssetUtils.getPngImage('logo'),
              ),
            ),
            Spacer(),
            Container(
              width: 300,
              // color: Colors.red,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  NavLink(
                    navLink: '',
                    navText: 'About Us',
                  ),
                  NavLink(
                    navLink: '/onboarding',
                    navText: 'OnBoarding',
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 50,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Image.asset(
          AssetUtils.getPngImage('logo'),
        ),
      ),
    );
  }
}

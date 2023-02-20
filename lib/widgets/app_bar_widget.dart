import 'dart:html';
import 'dart:ui' as ui;

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
  final String registryName = 'productHuntImage';

  @override
  void initState() {
    ///register widget for [HtmlElementView]
    // ignore:undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      registryName,
      (int viewId) => IFrameElement()
        ..srcdoc = AppConstant.productHuntEmbedElement
        ..style.border = 'none',
    );
    super.initState();
  }

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
            const Spacer(),
            SizedBox(
              width: 400,
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
                  NavLink(
                    navLink: '',
                    navText: 'Blog',
                  ),
                ],
              ),
            ),
            const Spacer(),

            ///Product hunt button
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: SizedBox(
                height: 80,
                width: 250,
                child: Stack(
                  children: [
                    Positioned(
                      top: -6,
                      child: SizedBox(
                        height: 80,
                        width: 250,
                        child: HtmlElementView(viewType: registryName),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

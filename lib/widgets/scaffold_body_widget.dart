import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/utils/app_constant.dart';
import 'package:writegpt_website/utils/asset_utils.dart';
import 'package:writegpt_website/widgets/app_bar_widget.dart';

import 'dart:math' as math;

class ScaffoldBodyWidget extends StatefulWidget {
  final Widget child;
  const ScaffoldBodyWidget({super.key, required this.child});

  @override
  State<ScaffoldBodyWidget> createState() => _ScaffoldBodyWidgetState();
}

class _ScaffoldBodyWidgetState extends State<ScaffoldBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: ResponsiveBodyWrapperWidget(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        constraints: const BoxConstraints(maxHeight: 900),
                        width: AppConstant.maxAppWidth,
                        child: Image.asset(
                          AssetUtils.getPngImage('colored_bg'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const AppbarWidget(),
                    Padding(
                      padding: const EdgeInsets.only(top: 64.0),
                      child: widget.child,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResponsiveBodyWrapperWidget extends StatelessWidget {
  ResponsiveBodyWrapperWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final ScrollController horizontalScroll = ScrollController();

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: Scrollbar(
        controller: horizontalScroll,
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          controller: horizontalScroll,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: math.max(
                MediaQuery.of(context).size.width,
                1200,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

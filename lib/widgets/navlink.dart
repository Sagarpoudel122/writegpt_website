import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class NavLink extends StatefulWidget {
  final String navLink;
  final Function? onTap;
  final bool isUnderLine;
  final String navText;
  final bool isMobileView;
  const NavLink({
    Key? key,
    required this.navText,
    required this.navLink,
    this.onTap,
    this.isUnderLine = false,
    this.isMobileView = false,
  }) : super(key: key);

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  void initState() {
    super.initState();
  }

  bool isActive() {
    var fullUrl = html.window.location.href;
    Uri uri = Uri.parse(fullUrl);
    if (uri.isAbsolute) {
      if (uri.path == widget.navLink) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected = isActive();
    return Padding(
      padding: EdgeInsets.only(bottom: widget.isMobileView ? 15 : 5.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          } else {
            Navigator.of(context).pushReplacementNamed(widget.navLink);
            // context.go(widget.navLink);
          }
        },
        // style: const ButtonStyle(),
        child: TextWidget(
          widget.navText,
          textDecoration: widget.isUnderLine
              ? TextDecoration.underline
              : TextDecoration.none,
          style: !widget.isMobileView
              ? CustomTextStyles.text16_700
              : CustomTextStyles.text14_500,
          decorationThickness: 4,
          textColor: isSelected
              ? AppColors.scaffoldBgColor
              : AppColors.textPrimaryColor,
        ),
      ),
    );
  }
}

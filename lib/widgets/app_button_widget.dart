import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';

///An enum used to control the ui of the  [AppButtonWidget]
enum AppButtonType {
  primary,
  secondary,
  primaryOutlineBorder,
  secondaryOutlineBorder,
}

///A general button widget for the app. Control the type of the button using
///the parameter [appButtonType] in the constructor.
class AppButtonWidget extends StatelessWidget {
  AppButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.borderRadius = 10.0,
    this.height = 45,
    this.textColor,
    this.backgroundColor,
    this.padding,
    this.fontSize,
    this.loading = false,
    this.fontWeight,
    this.appButtonType = AppButtonType.primary,
    this.enabled = true,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final double borderRadius;
  final double height;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final bool loading;
  final FontWeight? fontWeight;
  final AppButtonType appButtonType;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: _getButtonBorder(),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: MaterialButton(
            elevation: 0,
            height: height,
            focusColor: Colors.transparent,
            hoverColor: backgroundColor ?? _getBackgroundColor(),

            // hoverColor: appButtonType==AppButtonType.primaryOutlineBorder?,
            onPressed: enabled ? (loading ? () {} : onPressed) : () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: loading
                  ? Container(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          _getContentColor(),
                        ),
                      ),
                    )
                  : Padding(
                      padding: padding ?? _getContentPadding(),
                      child: Text(
                        title,
                        style: _getTextStyle(),
                      ),
                    ),
            ),
            color: backgroundColor ?? _getBackgroundColor(),
          ),
        ),
      ),
    );
  }

  EdgeInsetsGeometry _getContentPadding() {
    if (appButtonType == AppButtonType.primary ||
        appButtonType == AppButtonType.primaryOutlineBorder) {
      // return const EdgeInsets.symmetric(horizontal: 10.0, vertical: 13);
    }
    return const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13);
  }

  Color _getBackgroundColor() {
    if (!enabled) return const Color(0xFFFC4C4C4);
    // if (!enabled) return const Color(0xFFC4C4C4);
    if (appButtonType == AppButtonType.primary) {
      return AppColors.buttonPrimaryColor;
    }

    if (appButtonType == AppButtonType.primaryOutlineBorder) {
      return Colors.transparent;
    }

    return Colors.white;
  }

  Color _getContentColor() {
    if (!enabled) return const Color(0xFFC6CCDC);
    if (appButtonType == AppButtonType.primary) {
      return Colors.white;
    }
    if (appButtonType == AppButtonType.secondary) {
      return AppColors.buttonPrimaryColor;
    }

    if (appButtonType == AppButtonType.secondaryOutlineBorder) {
      return AppColors.textSecondaryColor;
    }
    return Colors.white;
  }

  Border? _getButtonBorder() {
    if (appButtonType == AppButtonType.primaryOutlineBorder) {
      return Border.all(color: AppColors.buttonPrimaryColor);
    }
    if (appButtonType == AppButtonType.secondaryOutlineBorder) {
      return Border.all(color: AppColors.textSecondaryColor);
    }
    return null;
  }

  TextStyle _getTextStyle() {
    final Color? _textColor = enabled ? textColor : Colors.white;
    if (appButtonType == AppButtonType.primary) {
      return TextStyle(
        color: _textColor ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontFamily: 'Inter',
      );
    }

    if (appButtonType == AppButtonType.secondary) {
      return TextStyle(
        color: _textColor ?? AppColors.buttonPrimaryColor,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: 'Inter',
      );
    }
    if (appButtonType == AppButtonType.secondaryOutlineBorder) {
      return TextStyle(
        color: _textColor ?? AppColors.textSecondaryColor,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: 'Inter',
      );
    }

    ///if (appButtonType == AppButtonType.primaryOutlineBorder)
    return TextStyle(
      color: _textColor ?? AppColors.buttonPrimaryColor,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: 'Inter',
    );
  }
}

import 'package:flutter/material.dart';

class TransparentInkwellWidget extends StatelessWidget {
  ///A wrapper widget around material's [InkWell] widget to avoid defining
  ///transparent colors for hover, splash, etc. every time.
  const TransparentInkwellWidget({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}

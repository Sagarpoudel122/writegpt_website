import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/asset_utils.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AssetUtils.getPngImage('facebook'),
          height: 40,
        ),
        const SizedBox(width: 20),
        Image.asset(
          AssetUtils.getPngImage('twitter'),
          height: 40,
        ),
        const SizedBox(width: 20),
        Image.asset(
          AssetUtils.getPngImage('linkedin'),
          height: 40,
        ),
      ],
    );
  }
}

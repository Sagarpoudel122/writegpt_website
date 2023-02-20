import 'package:flutter/material.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/utils/asset_utils.dart';
import 'package:writegpt_website/widgets/bootstrap_container_widget.dart';
import 'package:writegpt_website/widgets/custom_flutter_bootstrap.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';

class AboutUsVideoSectionWidget extends StatefulWidget {
  final String title;
  final Widget child;
  final String videoUrl;
  final bool isVideoFirst;
  final MainAxisAlignment mainAxisAlignment;
  const AboutUsVideoSectionWidget({
    super.key,
    required this.title,
    required this.child,
    required this.videoUrl,
    this.isVideoFirst = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  State<AboutUsVideoSectionWidget> createState() =>
      _AboutUsVideoSectionWidgetState();
}

class _AboutUsVideoSectionWidgetState extends State<AboutUsVideoSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: CustomBootstrapContainer(
        children: [
          CustomBootstrapRow(
            children: [
              CustomBootstrapCol(
                sizes: 'col-6 col-sm-6 col-md-6 col-lg-6',
                child: widget.isVideoFirst
                    ? VideoSectionWidget(
                        videoUrl: widget.videoUrl,
                      )
                    : AboutUsVideoInfoWidget(
                        title: widget.title,
                        mainAxisAlignment: widget.mainAxisAlignment,
                        child: widget.child,
                      ),
              ),
              CustomBootstrapCol(
                sizes: 'col-6 col-sm-6 col-md-6 col-lg-6',
                child: !widget.isVideoFirst
                    ? VideoSectionWidget(
                        videoUrl: widget.videoUrl,
                      )
                    : AboutUsVideoInfoWidget(
                        title: widget.title,
                        mainAxisAlignment: widget.mainAxisAlignment,
                        child: widget.child,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutUsVideoInfoWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final MainAxisAlignment mainAxisAlignment;

  const AboutUsVideoInfoWidget({
    super.key,
    required this.title,
    required this.child,
    required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 370,
      // margin: EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          TextWidget(
            title,
            style: CustomTextStyles.text40_500,
          ),
          const SizedBox(
            height: 10,
          ),
          child,
        ],
      ),
    );
  }
}

class VideoSectionWidget extends StatelessWidget {
  final String videoUrl;
  const VideoSectionWidget({
    super.key,
    this.videoUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Container(
        height: 370,
        width: 550,
        decoration: BoxDecoration(
          // color: AppColors.videoBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(
          videoUrl,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

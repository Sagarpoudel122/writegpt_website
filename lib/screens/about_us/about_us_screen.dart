import 'package:flutter/material.dart';
import 'package:writegpt_website/screens/about_us/widget/about_us_video_section.dart';
import 'package:writegpt_website/screens/about_us/widget/aboutus_description_widget.dart';
import 'package:writegpt_website/screens/about_us/widget/harness_gpt_widget.dart';
import 'package:writegpt_website/utils/asset_utils.dart';
import 'package:writegpt_website/widgets/app_button_widget.dart';
import 'package:writegpt_website/widgets/scaffold_body_widget.dart';
import 'package:writegpt_website/widgets/text/link_text.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';
import 'dart:js' as js;

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBodyWidget(
      child: Column(
        children: [
          Container(
            height: 140,
          ),
          Center(
            child: SizedBox(
              width: 650,
              child: Column(
                children: [
                  Image.asset(
                    AssetUtils.getPngImage('logo_full'),
                    height: 100,
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: TextWidget(
                      'The web extension designed to facilitate effective prompt writing for various sets of use case , thus enhancing browsing efficiency &  optimising content creation & consumption',
                      style: CustomTextStyles.text24_400,
                      textAlign: TextAlign.center,
                      fontFamily: fontLato,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButtonWidget(
                        title: 'Add to Chrome',
                        onPressed: () {},
                        appButtonType: AppButtonType.primary,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5.0,
                        ),
                        child: AppButtonWidget(
                          title: 'Open Extension',
                          onPressed: () {
                            js.context.callMethod("triggerHotkey");
                          },
                          appButtonType: AppButtonType.primaryOutlineBorder,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          const AboutUsVideoSectionWidget(
            mainAxisAlignment: MainAxisAlignment.start,
            title: 'Harness GPT for vast use-cases on any website',
            videoUrl: '',
            child: HarnessGptDescriptionWidget(),
          ),
          const AboutUsVideoSectionWidget(
            isVideoFirst: true,
            title: 'Assisted prompt writing',
            videoUrl: '',
            child: AboutUsDescriptionWidget(
              text1:
                  'Bridge your needs, context, goals, product, audience, style (and many more) with the power of writeGPT. \n',
              text2:
                  'Our facilitated prompt engineering includes multi-layers of customization along with lots of suggestions to enable the best-tailored outputs for you.',
            ),
          ),
          const AboutUsVideoSectionWidget(
            title: 'Break unproductive browsing habits',
            videoUrl: '',
            child: AboutUsDescriptionWidget(
              text1:
                  'Internet browsing is grounded with bad design where users have to constantly interchange tabs or check multiple websites to find a simple answer.\n ',
              text2:
                  "We're here to streamline the whole browsing experience with no strings attached.",
            ),
          ),
          const SizedBox(height: 220),
          Wrap(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                width: 305,
                child: AppButtonWidget(
                  height: 58,
                  title: 'Add to Chrome',
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5.0,
                ),
                width: 305,
                child: AppButtonWidget(
                  title: 'Watch on Youtube',
                  height: 58,
                  onPressed: () {},
                  appButtonType: AppButtonType.primaryOutlineBorder,
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          Row(
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
          ),
          const SizedBox(height: 35),
          SizedBox(
            width: 674,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                LinkText(text: 'Contact'),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: LinkText(text: 'Ask for a feature'),
                ),
                LinkText(text: 'Report a bug'),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

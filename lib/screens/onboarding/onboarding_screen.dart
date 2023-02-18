import 'package:flutter/material.dart';
import 'package:writegpt_website/screens/onboarding/widgets/activate_extension_widget.dart';
import 'package:writegpt_website/screens/onboarding/widgets/onboarding_container_wrapper.dart';
import 'package:writegpt_website/screens/onboarding/widgets/onboarding_refresh_your_tab.dart';
import 'package:writegpt_website/screens/onboarding/widgets/select_your_content.dart';
import 'package:writegpt_website/screens/onboarding/widgets/timeline_widget.dart';
import 'package:writegpt_website/utils/app_colors.dart';
import 'package:writegpt_website/utils/asset_utils.dart';
import 'package:writegpt_website/utils/extension_utils.dart';
import 'package:writegpt_website/widgets/app_button_widget.dart';
import 'package:writegpt_website/widgets/scaffold_body_widget.dart';
import 'package:writegpt_website/widgets/text/text_styles.dart';
import 'package:writegpt_website/widgets/text/text_widget.dart';
import 'package:writegpt_website/widgets/text/transaparent_inkwell_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> timelineString = [
      'Refresh your tabs',
      'Select your content',
      'Activate the extension',
      'Give the desired\ncommand',
      'Check out history',
    ];

    return ScaffoldBodyWidget(
      child: Column(
        children: [
          Container(
            height: 140,
          ),
          Center(
            child: Container(
              width: 650,
              child: Center(
                child: TextWidget(
                  'How does \nWriteGPT work?',
                  style: CustomTextStyles.text64_500,
                  textAlign: TextAlign.center,
                  fontFamily: fontHelveticaNeue,
                ),
              ),
            ),
          ),
          Container(
            height: 120,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 1150),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const OnboardingContainerWrapper(
                        title:
                            'Refresh all your open tabs \nbefore using WriteGPT on them ',
                        widget: OnboardingRefreshYourTabWidget(),
                      ),
                      const OnboardingContainerWrapper(
                        title:
                            'Select any text (you can try the \n one below) ',
                        widget: SelectYourContentWidget(),
                      ),
                      const OnboardingContainerWrapper(
                        title: 'Activate the extension using the \nshortcuts ',
                        widget: ActivateExtensionWidget(),
                      ),
                      OnboardingContainerWrapper(
                        title:
                            'Choose one of our suggestions \nor come up with your own ',
                        widget: Image.asset(
                          AssetUtils.getPngImage('get_desired_result'),
                        ),
                      ),
                      OnboardingContainerWrapper(
                        title:
                            'Under full history you will see all\n your previous prompts',
                        widget: Image.asset(
                          AssetUtils.getPngImage('see_history'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    transform: Matrix4.translationValues(0, 550 / 2, 0.0),
                    margin: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...timelineString.mapIndexed(
                          (e, i) => TimelineWidget(text: e, index: i),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
          ),
          Wrap(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                width: 305,
                child: AppButtonWidget(
                  height: 58,
                  title: 'Sign up for new updates',
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
                  title: 'Request a feature',
                  height: 58,
                  onPressed: () {},
                  appButtonType: AppButtonType.primaryOutlineBorder,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          TransparentInkwellWidget(
            onTap: () {},
            child: TextWidget(
              'Report a bug',
              style: CustomTextStyles.text18_400,
              textColor: AppColors.buttonPrimaryColor,
              textDecoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

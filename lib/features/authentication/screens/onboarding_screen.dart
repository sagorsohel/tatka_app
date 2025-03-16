import 'package:flutter/material.dart';
import 'package:tatka_app/utils/constants/image_strings.dart';
import 'package:tatka_app/utils/constants/sizes.dart';
import 'package:tatka_app/utils/constants/text_strings.dart';
import 'package:tatka_app/utils/device/device_utility.dart';
import 'package:tatka_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController =
      PageController(); // ✅ Define PageController

  @override
  void dispose() {
    _pageController.dispose(); // ✅ Dispose it to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController, // ✅ Use the same controller
            children: [
              OnBoardingWidget(
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
                imageUrl: TImages.onBoardingImage2,
              ),
              OnBoardingWidget(
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
                imageUrl: TImages.onBoardingImage2,
              ),
              OnBoardingWidget(
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
                imageUrl: TImages.onBoardingImage3,
              ),
            ],
          ),

          onboarding_skip_button(context),

          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.spaceBtwSections,
            child: SmoothPageIndicator(
              controller: _pageController, // ✅ Use the same controller
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned onboarding_skip_button(BuildContext context) {
    return Positioned(
      top: THelperFunctions.screenHeight() * 0.05,
      right: THelperFunctions.screenWidth() * 0.05,
      child: TextButton(
        onPressed: () {},
        child: Text(
          TTexts.skip,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });

  final String title, subTitle, imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(imageUrl),
          height: THelperFunctions.screenHeight() * 0.6,
          width: THelperFunctions.screenWidth() * 0.8,
        ),

        Text(
          title ?? '',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: TSizes.spaceBtwSections),
        Text(
          subTitle ?? '',
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

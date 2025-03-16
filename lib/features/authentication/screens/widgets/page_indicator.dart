import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class page_indicator extends StatelessWidget {
  const page_indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
        ),
      ),
    );
  }
}

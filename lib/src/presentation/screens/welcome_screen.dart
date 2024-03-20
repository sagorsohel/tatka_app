import 'package:bloc_ecommerce/src/routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Let's Get Started",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.facebook,
                  onPressed: () => context.pushNamed(Routes.LOGIN_ROUTE),
                ),
                const Gap(10), // Adds an empty space of 20 pixels.

                SocialLoginButton(
                  buttonType: SocialLoginButtonType.twitter,
                  onPressed: () => context.pushNamed(Routes.LOGIN_ROUTE),
                ),
                const Gap(10),
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () => context.pushNamed(Routes.LOGIN_ROUTE),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  TextButton(
                      onPressed: () => context.pushNamed(Routes.LOGIN_ROUTE),
                      child: Text("Sign in"))
                ],
              ),
              BottomButton(
                  onTap: () => context.pushNamed(Routes.REGISTER_ROUTE),
                  text: 'Create a new account')
            ],
          ),
        ],
      ),
    );
  }
}

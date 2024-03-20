import 'package:bloc_ecommerce/src/blocs/blocs.dart';
import 'package:bloc_ecommerce/src/routes/route_pages.dart';
import 'package:bloc_ecommerce/src/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashEnd) {
            context.goNamed(Routes.WELCOME_ROUTE);
          }
          // TODO: implement listener
        },
        child: Center(
          child: SvgPicture.asset(
            AssetManager.appLogo,
            height: 50.h,
            width: 80.w,
          ),
        ),
      ),
    );
  }
}

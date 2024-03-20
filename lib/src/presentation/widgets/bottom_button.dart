import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key,
      this.onTap,
      this.backGroundColor,
      this.textColor,
      required this.text});
  final void Function()? onTap;
  final backGroundColor;
  final textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color:
            backGroundColor ?? Theme.of(context).colorScheme.onPrimaryContainer,
        height: 40.h,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: textColor ?? Theme.of(context).colorScheme.onSecondary),
          ),
        ),
      ),
    );
  }
}

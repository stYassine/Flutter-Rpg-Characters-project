import 'package:flutter/material.dart';
import 'package:two_theme_styles/_theme.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.primaryAccent],
            begin: Alignment.topCenter, // begin gradient from
            end: Alignment.bottomCenter, // end gradient to
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5))
        ),
        child: child,
      ),
    );
  }
}

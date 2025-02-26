import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/social_button_model.dart';

// Enum for button shapes (with circle)
enum BtnType {
  rectangle,  // Rectangular button with moderate radius
  square,     // Square-edged button (no label)
  round,      // Fully rounded button
  iconOnly,   // Icon-only button (no label)
  circle,     // Circular button (no label)
}

// Enum for button styles
enum BtnStyle {
  lightFill,     // Light-themed filled button
  lightOutline,  // Light-themed outline button
  darkFill,      // Dark-themed filled button
  darkOutline,   // Dark-themed outline button
}

class SocialButtonWidget extends StatelessWidget {
  final Social social;
  final BtnType btnType;
  final BtnStyle btnStyle;
  final VoidCallback onTap;

  const SocialButtonWidget({
    super.key,
    required this.social,
    required this.btnType,
    required this.btnStyle,
    required this.onTap,
  });

  String _getSvgIconPath(Social social) {
    switch (social) {
      case Social.google:
        return 'assets/icons/google.svg';
      case Social.facebook:
        return 'assets/icons/facebook.svg';
      case Social.twitter:
        return 'assets/icons/twitter.svg';
      case Social.apple:
        return 'assets/icons/apple.svg';
    }
  }

  String _getLabel(Social social) {
    switch (social) {
      case Social.google:
        return 'Sign in with Google';
      case Social.facebook:
        return 'Sign in with Facebook';
      case Social.twitter:
        return 'Sign in with Twitter';
      case Social.apple:
        return 'Sign in with Apple';
    }
  }

  Color _getSocialColor(Social social) {
    switch (social) {
      case Social.google:
        return Colors.blue;
      case Social.facebook:
        return const Color(0xFF1877F2);
      case Social.twitter:
        return const Color(0xFF1DA1F2);
      case Social.apple:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    final String svgIconPath = _getSvgIconPath(social);
    final String label = _getLabel(social);
    final Color socialColor = _getSocialColor(social);

    Color backgroundColor = socialColor;
    Color foregroundColor = Colors.white;
    Color? borderColor;
    double borderRadius = 8.0;
    double iconSize = 20.0;
    EdgeInsets padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0);
    bool showLabel = true; // Default to true, will be overridden by btnType
    OutlinedBorder shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ); // Default shape

    // Apply style based on btnStyle
    switch (btnStyle) {
      case BtnStyle.lightFill:
        backgroundColor = Colors.grey[200]!;
        foregroundColor = Colors.black;
        break;
      case BtnStyle.lightOutline:
        backgroundColor = Colors.transparent;
        borderColor = Colors.grey[400]!;
        foregroundColor = Colors.grey[700]!;
        break;
      case BtnStyle.darkFill:
        backgroundColor = Colors.grey[900]!;
        foregroundColor = Colors.white;
        break;
      case BtnStyle.darkOutline:
        backgroundColor = Colors.transparent;
        borderColor = Colors.grey[700]!;
        foregroundColor = Colors.grey[300]!;
        break;
    }

    // Apply shape based on btnType
    switch (btnType) {
      case BtnType.rectangle:
        borderRadius = 8.0;
        showLabel = true; // Label visible
        break;
      case BtnType.square:
        borderRadius = 0.0;
        showLabel = false; // No label for square
        padding = const EdgeInsets.all(12.0); // Adjust padding for icon-only look
        iconSize = 24.0;
        break;
      case BtnType.round:
        borderRadius = 24.0;
        showLabel = true; // Label visible
        break;
      case BtnType.iconOnly:
        showLabel = false; // No label for iconOnly
        padding = const EdgeInsets.all(12.0);
        iconSize = 24.0;
        borderRadius = 8.0;
        break;
      case BtnType.circle:
        showLabel = false; // No label for circle
        padding = const EdgeInsets.all(12.0); // Adjust padding for icon-only look
        iconSize = 24.0;
        shape = CircleBorder(
          side: borderColor != null
              ? BorderSide(color: borderColor, width: 1.5)
              : BorderSide.none,
        );
        break;
    }

    // Update shape with borderRadius and borderColor if not a circle
    if (btnType != BtnType.circle) {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderColor != null
            ? BorderSide(color: borderColor, width: 1.5)
            : BorderSide.none,
      );
    }

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: shape,
        padding: padding,
        elevation: btnStyle == BtnStyle.lightOutline || btnStyle == BtnStyle.darkOutline
            ? 0
            : null,
      ),
      icon: SvgPicture.asset(
        svgIconPath,
        width: iconSize,
        height: iconSize,
        color: foregroundColor,
      ),
      label: showLabel
          ? Text(label)
          : const SizedBox.shrink(),
      onPressed: onTap,
    );
  }
}
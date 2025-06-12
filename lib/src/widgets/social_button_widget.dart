import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_auth_btns/src/utils/assets.dart';

import '../models/social_button_model.dart';

enum BtnType {
  rectangle,
  square,
  round,
  iconOnly,
  circle,
}

enum BtnStyle {
  lightFill,
  lightOutline,
  darkFill,
  darkOutline,
}

class SocialButtonWidget extends StatelessWidget {
  final Social social;
  final BtnType btnType;
  final BtnStyle? btnStyle;
  final VoidCallback onTap;

  const SocialButtonWidget({
    super.key,
    required this.social,
    required this.btnType,
    this.btnStyle,
    required this.onTap,
  });

  String _getSvgIconPath(Social social) {
    switch (social) {
      case Social.google:
        return Assets.socialGoogle;
      case Social.facebook:
        return Assets.socialFacebook;
      case Social.twitter:
        return Assets.socialTwitter;
      case Social.apple:
        return Assets.socialApple;
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
        return Colors.white;
      case Social.facebook:
        return const Color(0xFF1877F2);
      case Social.twitter:
        return Colors.black;
      case Social.apple:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    final String svgIconPath = _getSvgIconPath(social);
    final String label = _getLabel(social);
    final Color socialColor = _getSocialColor(social);

    Color backgroundColor;
    Color? foregroundColor;
    Color? borderColor;
    Color? iconColor;

    // Default behavior if btnStyle not provided
    if (btnStyle == null) {
      if (social == Social.google) {
        backgroundColor = Colors.white;
        foregroundColor = Colors.black;
        iconColor = null;
      } else if (social == Social.apple) {
        backgroundColor = Colors.black;
        foregroundColor = Colors.white;
        iconColor = Colors.white;
      }
      else if (social == Social.twitter) {
        backgroundColor = Colors.black;
        foregroundColor = Colors.white;
        iconColor = Colors.white;
      } else {
        backgroundColor = socialColor;
        foregroundColor = Colors.white;
        iconColor = null;
      }
    } else {
      switch (btnStyle!) {
        case BtnStyle.lightFill:
          backgroundColor = Colors.white;
          foregroundColor = Colors.black;
          iconColor = Colors.black;
          break;
        case BtnStyle.lightOutline:
          backgroundColor = Colors.transparent;
          borderColor = Colors.white;
          foregroundColor = Colors.white;
          iconColor = Colors.white;
          break;
        case BtnStyle.darkFill:
          backgroundColor = Colors.grey[900]!;
          foregroundColor = Colors.white;
          iconColor = Colors.white;
          break;
        case BtnStyle.darkOutline:
          backgroundColor = Colors.transparent;
          borderColor = Colors.black;
          foregroundColor = Colors.black;
          iconColor = Colors.black;
          break;
      }
    }

    double borderRadius = 8.0;
    double iconSize = 20.0;
    EdgeInsets padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0);
    bool showLabel = true;
    OutlinedBorder shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius));

    // Configure shape based on BtnType
    switch (btnType) {
      case BtnType.rectangle:
        borderRadius = 8.0;
        showLabel = true;
        break;
      case BtnType.square:
        borderRadius = 0.0;
        showLabel = false;
        padding = const EdgeInsets.all(12.0);
        iconSize = 24.0;
        break;
      case BtnType.round:
        borderRadius = 24.0;
        showLabel = true;
        break;
      case BtnType.iconOnly:
        showLabel = false;
        padding = const EdgeInsets.all(12.0);
        iconSize = 24.0;
        borderRadius = 8.0;
        break;
      case BtnType.circle:
        showLabel = false;
        padding = const EdgeInsets.all(12.0);
        iconSize = 24.0;
        shape = CircleBorder(
          side: borderColor != null
              ? BorderSide(color: borderColor, width: 1.5)
              : BorderSide.none,
        );
        break;
    }

    // If not a circle, apply shape with border
    if (btnType != BtnType.circle) {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderColor != null
            ? BorderSide(color: borderColor, width: 1.5)
            : BorderSide.none,
      );
    }

    Widget button = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: shape,
        padding: padding,
        elevation: btnStyle == BtnStyle.lightOutline || btnStyle == BtnStyle.darkOutline ? 0 : null,
      ),
      onPressed: onTap,
      child: showLabel
          ? Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            svgIconPath,
            width: iconSize,
            height: iconSize,
            color: iconColor,
          ),
          const SizedBox(width: 8),
          Text(label),
        ],
      )
          : Center(
        child: SvgPicture.asset(
          svgIconPath,
          width: iconSize,
          height: iconSize,
          color: iconColor,
        ),
      ),
    );

    // Apply fixed square dimensions if needed
    if (btnType == BtnType.square) {
      return SizedBox(
        width: 48,
        height: 48,
        child: button,
      );
    }

    return button;
  }
}

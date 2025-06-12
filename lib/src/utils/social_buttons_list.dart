import 'package:flutter/material.dart';
import 'package:social_auth_btns/social_auth_btns.dart';
import 'assets.dart';

final List<SocialButtonModel> socialButtons = [
  SocialButtonModel(
    type: Social.google,
    label: 'Sign in with Google',
    svgIconPath: Assets.socialGoogle,
    color: Colors.black,
    textColor: Colors.white,
  ),
  SocialButtonModel(
    type: Social.facebook,
    label: 'Sign in with Facebook',
    svgIconPath: Assets.socialFacebook,
    color: const Color(0xFF1877F2),
    textColor: Colors.white,
  ),
  SocialButtonModel(
    type: Social.apple,
    label: 'Sign in with Apple',
    svgIconPath: Assets.socialApple,
    color: const Color(0xFF000000),
    textColor: Colors.white,
  ),
];

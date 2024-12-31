import 'package:flutter/material.dart';
import 'package:social_auth_btns/social_auth_btns.dart';

final List<SocialButtonModel> socialButtons = [
  SocialButtonModel(
    type: Social.google,
    label: 'Sign in with Google',
    svgIconPath: 'assets/social/google.svg',
    color: const Color(0xFF4285F4),
    textColor: Colors.white,
  ),
  SocialButtonModel(
    type: Social.facebook,
    label: 'Sign in with Facebook',
    svgIconPath: 'assets/social/facebook.svg',
    color: const Color(0xFF1877F2),
    // Facebook blue
    textColor: Colors.white,
  ),
  SocialButtonModel(
    type: Social.apple,
    label: 'Sign in with Apple',
    svgIconPath: 'assets/social/apple.svg',
    color: const Color(0xFF000000),
    textColor: Colors.white,
  ),
];

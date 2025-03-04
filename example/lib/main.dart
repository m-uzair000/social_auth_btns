import 'package:flutter/material.dart';
import 'package:social_auth_btns/social_auth_btns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Auth Buttons Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Social Auth Buttons'),
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.rectangle,      // Shows label
                btnStyle: BtnStyle.lightFill,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.rectangle,      // Shows label
                btnStyle: BtnStyle.lightOutline,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.apple,
                btnType: BtnType.circle,         // No label
                btnStyle: BtnStyle.darkOutline,
                onTap: () {
                  print('Apple Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.apple,
                btnType: BtnType.circle,         // No label
                btnStyle: BtnStyle.darkFill,
                onTap: () {
                  print('Apple Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.facebook,
                btnType: BtnType.iconOnly,       // No label
                btnStyle: BtnStyle.darkFill,
                onTap: () {
                  print('Facebook Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.twitter,
                btnType: BtnType.square,         // No label
                btnStyle: BtnStyle.lightOutline,
                onTap: () {
                  print('Twitter Sign-In button tapped!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
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

              /// Google Btns
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.rectangle,
                // btnStyle: BtnStyle.lightOutline,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.round,
                // btnStyle: BtnStyle.lightOutline,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.circle,
                // btnStyle: BtnStyle.lightOutline,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.square,
                // btnStyle: BtnStyle.lightOutline,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.rectangle,
                btnStyle: BtnStyle.darkOutline,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.rectangle,
                btnStyle: BtnStyle.darkFill,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),
              SocialButtonWidget(
                social: Social.google,
                btnType: BtnType.rectangle,
                btnStyle: BtnStyle.lightFill,
                onTap: () {
                  print('Google Sign-In button tapped!');
                },
              ),
              const SizedBox(height: 20),

              /// Apple Btns
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.rectangle,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.round,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.circle,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.square,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.darkOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.darkFill,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.apple,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.lightFill,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              //

              /// Facebook Btns
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.rectangle,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.round,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.circle,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.square,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.darkOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.darkFill,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.facebook,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.lightFill,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              //
              //
              //

              /// Twitter Btns
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.rectangle,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.round,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.circle,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.square,
              //   // btnStyle: BtnStyle.lightOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.darkOutline,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.darkFill,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
              // SocialButtonWidget(
              //   social: Social.twitter,
              //   btnType: BtnType.rectangle,
              //   btnStyle: BtnStyle.lightFill,
              //   onTap: () {
              //     print('Google Sign-In button tapped!');
              //   },
              // ),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
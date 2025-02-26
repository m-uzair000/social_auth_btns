import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:social_auth_btns/social_auth_btns.dart';

void main() {
  // Since SocialButtonModel is no longer used, we’ll remove this group
  // group('SocialButtonModel', ...) is obsolete

  // Testing the SocialButtonWidget widget
  group('SocialButtonWidget', () {
    testWidgets('should display a Google button with correct label and style', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialButtonWidget(
            social: Social.google,
            btnType: BtnType.rectangle,
            btnStyle: BtnStyle.lightFill,
            onTap: () {},
          ),
        ),
      ));

      // Check if the button label is displayed
      expect(find.text('Sign in with Google'), findsOneWidget);

      // Check if the button has the correct background color (lightFill uses Colors.grey[200])
      final elevatedButton = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      final buttonStyle = elevatedButton.style!;
      expect(buttonStyle.backgroundColor!.resolve({}), Colors.grey[200]);
    });

    testWidgets('should display an Apple button with dark outline style', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialButtonWidget(
            social: Social.apple,
            btnType: BtnType.round,
            btnStyle: BtnStyle.darkOutline,
            onTap: () {},
          ),
        ),
      ));

      // Check if the button label is displayed
      expect(find.text('Sign in with Apple'), findsOneWidget);

      // Check if the button has a transparent background and dark grey border
      final elevatedButton = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      final buttonStyle = elevatedButton.style!;
      expect(buttonStyle.backgroundColor!.resolve({}), Colors.transparent);
      expect((buttonStyle.shape!.resolve({}) as RoundedRectangleBorder).side.color, Colors.grey[700]);
    });

    testWidgets('should call onTap when button is tapped', (WidgetTester tester) async {
      bool tapped = false;

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialButtonWidget(
            social: Social.google,
            btnType: BtnType.rectangle,
            btnStyle: BtnStyle.lightFill,
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ));

      // Tap the button and check if onTap is called
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(); // Ensure the tap event is processed
      expect(tapped, isTrue);
    });

    testWidgets('should not display label for iconOnly button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialButtonWidget(
            social: Social.twitter,
            btnType: BtnType.iconOnly,
            btnStyle: BtnStyle.darkFill,
            onTap: () {},
          ),
        ),
      ));

      // Check that the label is not displayed
      expect(find.text('Sign in with Twitter'), findsNothing);

      // Check if the icon is present (SVG asset)
      expect(find.byType(SvgPicture), findsOneWidget);
    });
  });

  // Since there’s no predefined socialButtons list anymore, remove this group
  // group('social_buttons_list.dart', ...) is obsolete
}
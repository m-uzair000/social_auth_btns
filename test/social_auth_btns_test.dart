import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:social_auth_btns/social_auth_btns.dart';


void main() {
  group('SocialButtonModel', () {
    test('should create SocialButtonModel with correct properties', () {
      final button = SocialButtonModel(
        type: Social.google,
        label: 'Sign in with Google',
        svgIconPath: 'assets/icons/google.svg',
        color: Color(0xFF4285F4),
        textColor: Colors.white,
      );

      // Check if the properties are correctly assigned
      expect(button.type, Social.google);
      expect(button.label, 'Sign in with Google');
      expect(button.svgIconPath, 'assets/icons/google.svg');
      expect(button.color, Color(0xFF4285F4));
      expect(button.textColor, Colors.white);
    });
  });

  // Testing the SocialButtonsWidget widget
  group('SocialButtonsWidget', () {
    testWidgets('should display a Google button with correct label and color', (WidgetTester tester) async {
      final button = SocialButtonModel(
        type: Social.google,
        label: 'Sign in with Google',
        svgIconPath: 'assets/icons/google.svg',
        color: Color(0xFF4285F4),
        textColor: Colors.white,
      );

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialButtonWidget(
            btnType: Social.google,
            onTap: () {},
          ),
        ),
      ));

      // Check if the button label is displayed
      expect(find.text('Sign in with Google'), findsOneWidget);

      // Check if the button color is correct
      final container = tester.widget<Container>(find.byType(Container));
      expect(container.color, Color(0xFF4285F4));
    });

    testWidgets('should call onTap when button is tapped', (WidgetTester tester) async {
      bool tapped = false;

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SocialButtonWidget(
            btnType: Social.google,
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ));

      // Tap the button and check if onTap is called
      await tester.tap(find.byType(SocialButtonWidget));
      expect(tapped, isTrue);
    });
  });

  // Testing the predefined list of social buttons (if you have this functionality)
  group('social_buttons_list.dart', () {
    test('should have a predefined list of social buttons', () {
      expect(socialButtons.length, greaterThan(0)); // Ensure the list isn't empty
      expect(socialButtons[0].type, Social.google); // Check if first button is Google
      expect(socialButtons[1].type, Social.facebook); // Check if second button is Facebook
    });
  });
}

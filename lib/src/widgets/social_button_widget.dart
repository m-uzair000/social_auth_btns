import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_auth_btns/social_auth_btns.dart';


class SocialButtonWidget extends StatelessWidget {
  final Social btnType;
  final VoidCallback onTap;

  const SocialButtonWidget({
    super.key,
    required this.btnType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final buttonModel = socialButtons.firstWhere(
          (button) => button.type == btnType,
      orElse: () => throw ArgumentError('Invalid Social button type: $btnType'),
    );

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonModel.color,
        foregroundColor: buttonModel.textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      ),
      icon: SvgPicture.asset(
        buttonModel.svgIconPath,
        width: 20,
        height: 20,
        color: buttonModel.textColor,
      ),
      label: Text(buttonModel.label),
      onPressed: onTap,
    );
  }
}

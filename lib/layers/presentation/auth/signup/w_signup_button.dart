import 'package:flutter/material.dart';
import 'package:test_yocheck_pet/common/common.dart';
import 'package:test_yocheck_pet/layers/presentation/widget/style_text.dart';

class SignUpButton extends StatelessWidget {

  final VoidCallback onPressed;

  const SignUpButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, AppConstants.buttonHeight),
        shape: RoundedRectangleBorder(
            borderRadius: AppConstants.borderLightRadius,
        ),
      ),
      child: StyleText(
        text: 'signup'.tr(),
        color: AppColors.whiteTextColor,
        size: AppDim.fontSizeMedium,
        fontWeight: AppDim.weightBold,
      ),
    );
  }
}

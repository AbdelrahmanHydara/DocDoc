import 'package:docdoc/core/components/my_text_button.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/my_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButtonAndText extends StatelessWidget
{
  const GetStartedButtonAndText({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      child: Column(
        children:
        [
          Text(
            MyStrings.manageAndSchedule,
            style: MyTextStyles.font14GeryRegular.copyWith(
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(30),
          MyTextButton(
            buttonText: MyStrings.getStarted,
            textStyle: MyTextStyles.font16WhiteMedium,
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}

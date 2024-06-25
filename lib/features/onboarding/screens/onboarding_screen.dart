import 'package:docdoc/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doc_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button_and_text.dart';

class OnboardingScreen extends StatelessWidget
{
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children:
              [
                const DocLogoAndName(),
                verticalSpace(30),
                const DoctorImageAndText(),
                const GetStartedButtonAndText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

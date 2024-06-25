import 'package:docdoc/core/components/my_text_form_field.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:docdoc/core/helpers/my_regex.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children:
        [
          MyTextFormField(
            hintText: MyStrings.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if(value == null || value .isEmpty || !MyRegex.isEmailValid(value)) {
                return MyStrings.validEmail;
              }
          },
          ),
          verticalSpace(20),
          MyTextFormField(
            hintText: MyStrings.password,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if(value == null || value .isEmpty) {
                return MyStrings.validPassword;
              }
          },
          ),
          verticalSpace(25),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}

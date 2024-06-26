import 'package:docdoc/core/components/my_text_form_field.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/my_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          MyTextFormField(
            keyboardType: TextInputType.name,
            hintText: MyStrings.username,
            validator: (value) {
              if(value == null || value .isEmpty) {
                return MyStrings.validName;
              }
            },
          ),
          verticalSpace(20),
          MyTextFormField(
            hintText: MyStrings.phone,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if(value == null || value .isEmpty || !MyRegex.isPhoneNumberValid(value)) {
                return MyStrings.validPhone;
              }
            },
          ),
          verticalSpace(20),
          MyTextFormField(
            keyboardType: TextInputType.emailAddress,
            hintText: MyStrings.email,
            validator: (value) {
              if(value == null || value .isEmpty || !MyRegex.isEmailValid(value)) {
                return MyStrings.validEmail;
              }
            },
          ),
          verticalSpace(20),
          MyTextFormField(
            hintText: MyStrings.password,
            obscureText: isPasswordObscureText,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if(value == null || value .isEmpty || !MyRegex.isPasswordValid(value)) {
                return MyStrings.validPassword;
              }
            },
          ),
          verticalSpace(20),
          MyTextFormField(
            hintText: MyStrings.passwordConfirmation,
            obscureText: isPasswordConfirmationObscureText,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText = !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if(value == null || value .isEmpty || !MyRegex.isPasswordValid(value)) {
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

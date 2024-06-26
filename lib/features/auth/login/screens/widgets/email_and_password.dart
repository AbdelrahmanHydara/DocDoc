import 'package:docdoc/core/components/my_text_form_field.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/auth/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:docdoc/core/helpers/my_regex.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'password_validations.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  late TextEditingController passwordController;

  bool hasLowerCase = false;
  bool hasMinLength = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasUpperCase = false;

  bool isPasswordObscureText = true;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = MyRegex.hasLowerCase(passwordController.text);
        hasMinLength = MyRegex.hasMinLength(passwordController.text);
        hasNumber = MyRegex.hasNumber(passwordController.text);
        hasSpecialCharacters = MyRegex.hasSpecialCharacter(passwordController.text);
        hasUpperCase = MyRegex.hasUpperCase(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children:
        [
          MyTextFormField(
            controller: context.read<LoginCubit>().emailController,
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
            controller: context.read<LoginCubit>().passwordController,
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
              if(value == null || value .isEmpty) {
                return MyStrings.validPassword;
              }
          },
          ),
          verticalSpace(25),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasMinLength: hasMinLength,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasUpperCase: hasUpperCase,
          ),
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

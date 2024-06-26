import 'package:docdoc/core/components/my_text_form_field.dart';
import 'package:docdoc/core/constants/my_strings.dart';
import 'package:docdoc/core/helpers/my_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/auth/login/screens/widgets/password_validations.dart';
import 'package:docdoc/features/auth/register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowerCase = false;
  bool hasMinLength = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasUpperCase = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = MyRegex.hasLowerCase(passwordController.text);
        hasUpperCase = MyRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = MyRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = MyRegex.hasNumber(passwordController.text);
        hasMinLength = MyRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          MyTextFormField(
            controller: context.read<RegisterCubit>().nameController,
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
            controller: context.read<RegisterCubit>().phoneController,
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
            controller: context.read<RegisterCubit>().emailController,
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
            controller: context.read<RegisterCubit>().passwordController,
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
            controller: context.read<RegisterCubit>().passwordConfirmationController,
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

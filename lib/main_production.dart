import 'package:docdoc/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'docdoc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  /// To fix texts being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(const DocDocApp());
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

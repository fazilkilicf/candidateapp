import 'package:candidateapp/config/l10n/l10n.dart';
import 'package:candidateapp/core/core.dart';
import 'package:candidateapp/core/widgets/custom_password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static LoginScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const LoginScreen();
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isValidate = false;
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ScaffoldBackgroundWidget(),
          SafeArea(
              child: Container(
            width: DeviceUtility.getScreenWidth(context),
            padding: EdgeInsets.symmetric(horizontal: 28.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        gapH120,
                        const BrandLogoWidget(),
                        gapH64,
                        Text(
                          context.l10n.login_body_text,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.headlineMedium
                              ?.copyWith(color: AppColors.darkGrey),
                        ),
                        gapH48,
                        CustomTextFormField(
                          controller: _usernameController,
                          labelText: context.l10n.username,
                          hintText: context.l10n.username,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              _usernameController.clear();
                              isEmpty();
                            },
                            child: Image.asset(
                              PathConstants.deleteIcon,
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          hasError: _hasError,
                          errorIcon: Image.asset(
                            PathConstants.errorIcon,
                            width: 26.w,
                            height: 23.h,
                          ),
                          onChanged: (p0) => isEmpty(),
                        ),
                        gapH32,
                        CustomTextPasswordField(
                          controller: _passwordController,
                          labelText: context.l10n.password,
                          hintText: context.l10n.password,
                          onChanged: (p0) => isEmpty(),
                        ),
                      ],
                    ),
                  ),
                )),
                // Button
                CustomElevatedButton(
                  buttonWidth: DeviceUtility.getScreenWidth(context),
                  text: context.l10n.login_text.toUpperCase(),
                  onPressed: _login,
                  enable: _isValidate,
                ),
                gapH32
              ],
            ),
          ))
        ],
      ),
    );
  }

  _login() {
    // To Do: login Firebase
  }

  String isEmpty() {
    if (Validator.validateIsNotEmpty(input: _usernameController.text) &&
        Validator.validateIsNotEmpty(input: _passwordController.text)) {
      setState(() => _isValidate = true);

      return _isValidate.toString();
    } else {
      setState(() => _isValidate = false);

      return _isValidate.toString();
    }
  }
}

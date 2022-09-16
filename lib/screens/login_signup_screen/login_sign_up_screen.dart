import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_medication_app/theme/app_color.dart';
import 'package:medic_medication_app/theme/app_sizes.dart';
import 'package:medic_medication_app/utils/validators.dart';
import 'package:medic_medication_app/widgets/app_text_form_field.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();
  ValueNotifier<AuthScreen> authScreenNotifier =
      ValueNotifier(AuthScreen.signIn);

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset('assets/images/leaf.svg'),
          ),
          SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: AppSizes.globalHPadding),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSizes.s100),
                  SvgPicture.asset(
                    'assets/images/logo.svg',
                    height: AppSizes.s50,
                  ),
                  const SizedBox(height: AppSizes.s18),
                  ValueListenableBuilder<AuthScreen>(
                      valueListenable: authScreenNotifier,
                      builder: (context, authScreen, child) {
                        return Text(
                          authScreen == AuthScreen.signIn
                              ? "Sign In"
                              : "Sign Up",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                fontSize: AppSizes.s30,
                              ),
                        );
                      }),
                  const SizedBox(height: AppSizes.s10),
                  ValueListenableBuilder(
                    valueListenable: authScreenNotifier,
                    builder: (_, authScreen, child) {
                      return Text(
                        authScreen == AuthScreen.signIn
                            ? "Sign in now to acces your excercises and saved music."
                            : "Sign up now for free and start meditating, and explore Medic.",
                        style: textTheme.bodyText1?.copyWith(
                          color: AppColor.white70,
                          fontSize: AppSizes.s20,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: AppSizes.s16),
                  ValueListenableBuilder(
                    valueListenable: authScreenNotifier,
                    builder: (context, authScreen, child) {
                      if (authScreen == AuthScreen.signIn) {
                        return const SizedBox.shrink();
                      }
                      return AppTextFormField(
                        labelText: "Name",
                        controller: _nameController,
                        validator: Validator.validateName,
                      );
                    },
                  ),
                  const SizedBox(height: AppSizes.s16),
                  AppTextFormField(
                    labelText: "Email Address",
                    controller: _emailController,
                    validator: Validator.validateName,
                  ),
                  const SizedBox(height: AppSizes.s16),
                  AppTextFormField(
                    labelText: "Password",
                    isPasswordField: true,
                    controller: _passwordController,
                    validator: Validator.validatePassword,
                  ),
                  const SizedBox(height: AppSizes.s50),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: ValueListenableBuilder(
                        valueListenable: authScreenNotifier,
                        builder: (context, authScreen, child) {
                          return Text(
                            authScreen == AuthScreen.signIn
                                ? 'LOGIN'
                                : 'SIGN UP',
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.s16),
                  Align(
                    alignment: Alignment.center,
                    child: ValueListenableBuilder(
                      valueListenable: authScreenNotifier,
                      builder: (context, authScreen, child) {
                        if (authScreen == AuthScreen.signIn) {
                          return RichTextWidget(
                            onPressed: () {
                              authScreenNotifier.value = AuthScreen.signUp;
                            },
                            secondText: " Sign Up",
                            firstText: "Don't have an account? ",
                            authScreenNotifier: authScreenNotifier,
                          );
                        }

                        return RichTextWidget(
                          onPressed: () {
                            authScreenNotifier.value = AuthScreen.signIn;
                          },
                          secondText: " Sign In",
                          firstText: "Already have an account? ",
                          authScreenNotifier: authScreenNotifier,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    Key? key,
    required this.authScreenNotifier,
    required this.onPressed,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  final ValueNotifier<AuthScreen> authScreenNotifier;
  final VoidCallback onPressed;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(
        text: firstText,
        style: textTheme.bodyText1?.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: secondText,
            recognizer: TapGestureRecognizer()..onTap = onPressed,
            style: textTheme.bodyMedium?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

enum AuthScreen {
  signIn,
  signUp,
}

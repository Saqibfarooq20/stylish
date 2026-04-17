import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stylish/components/custom_button.dart';

import '../../components/circle.dart';
import '../../components/costume _text_field.dart';
import 'Forgot_password.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(), // 🔥 dismiss keyboard

        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(
              20,
              20,
              20,
              MediaQuery.of(context).viewInsets.bottom + 20,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// 🔹 Heading
                const Text(
                  "Create \nan account",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const SizedBox(height: 25),

                /// 🔹 Fields
                const CustomTextField(
                  hintText: 'Username or Email',
                  icon: Icons.person,
                ),
                const CustomTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const CustomTextField(
                  hintText: 'Confirm Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),

                const SizedBox(height: 20),

                /// 🔹 Terms Text
                Center(child: _buildRegisterText()),

                const SizedBox(height: 30),

                /// 🔹 Button
                CustomButton(
                  text: 'Create Account',
                  onTap: () {
                    debugPrint('created');

                  },
                ),

                const SizedBox(height: 40),

                /// 🔹 OR Text
                Center(
                  child: Text(
                    "- OR Continue with -",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// 🔹 Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _social('assets/images/google.png'),
                    const SizedBox(width: 12),
                    _social('assets/images/apple 1.png'),
                    const SizedBox(width: 12),
                    _social('assets/images/Group.png'),
                  ],
                ),

                const SizedBox(height: 30),

                /// 🔹 Bottom Text
                Center(child: _buildSignInText()),

              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 🔹 Register RichText (Reusable)
  Widget _buildRegisterText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By clicking the ',
        style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        children: [
          TextSpan(
            text: 'Register',
            style: const TextStyle(
              color: Color(0xFFFF3B5C),
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("Register clicked");
              },
          ),
          const TextSpan(
            text: ' button, you agree\nto the public offer',
          ),
        ],
      ),
    );
  }

  /// 🔹 Bottom RichText
  Widget _buildSignInText() {
    return RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: const TextStyle(color: Colors.black, fontSize: 16),
        children: [
          TextSpan(
            text: 'Sign In',
            style: const TextStyle(
              color: Color(0xFFFF3B5C),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("Sign In clicked");
              },
          ),
        ],
      ),
    );
  }

  /// 🔹 Social Button Reusable
  Widget _social(String path) {
    return SocialCircleButton(
      svgPath: path,
      onTap: () {},
    );
  }
}
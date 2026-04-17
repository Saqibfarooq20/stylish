import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stylish/screens/authentication/Sign_up.dart';
import 'package:stylish/screens/spash_screens/get_starte_srn.dart';

import '../../components/circle.dart';
import '../../components/costume _text_field.dart';
import '../../components/custom_button.dart';
import 'Forgot_password.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),

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
                  "Welcome\nBack!",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const SizedBox(height: 25),

                /// 🔹 Fields
                const CustomTextField(
                  hintText: 'Enter user name',
                  icon: Icons.person,
                ),
                const CustomTextField(
                  hintText: "Password",
                  icon: Icons.lock,
                  isPassword: true,
                ),

                const SizedBox(height: 10),

                /// 🔹 Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("Forgot Password clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xFFFF3B5C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// 🔹 Button
                CustomButton(
                  text: 'Login',
                  onTap: () {
                    debugPrint("login btn clicked");

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const GetStarteSrn(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 50),

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
                Center(child: _buildSignUpText(context)),

              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 🔹 Reusable Social Button
  Widget _social(String path) {
    return SocialCircleButton(
      svgPath: path,
      onTap: () {},
    );
  }

  /// 🔹 Bottom RichText
  Widget _buildSignUpText(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Create An Account ',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: 'Sign Up',
            style: const TextStyle(
              color: Color(0xFFFF3B5C),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint("Sign Up clicked");

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SignUp(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
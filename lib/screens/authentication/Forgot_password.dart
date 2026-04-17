import 'package:flutter/material.dart';
import '../../components/costume _text_field.dart';
import '../../components/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  "Forgot\npassword?",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const SizedBox(height: 30),

                /// 🔹 Email Field
                const CustomTextField(
                  hintText: 'Enter your email address',
                  icon: Icons.email,
                ),

                const SizedBox(height: 15),

                /// 🔹 Info Text
                Text(
                  "* We will send you a message to set or reset your new password",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 30),

                /// 🔹 Submit Button
                CustomButton(
                  text: 'Submit',
                  onTap: () {
                    debugPrint("Submit clicked");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
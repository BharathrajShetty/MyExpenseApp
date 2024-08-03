import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_expense_app/components/auth_gradient_button.dart';
import 'package:my_expense_app/components/auth_input_text_fields.dart';
import 'package:my_expense_app/components/auth_password_textfield.dart';

class SignupPage extends StatefulWidget {
  final void Function()? authPageToggle;
  const SignupPage({super.key, this.authPageToggle});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/auth_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: 300,
                      height: 330,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Register,",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(179, 243, 240, 240),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  AuthInputTextField(
                                    labelText: "Phone",
                                    hintText: "63......98",
                                    isObscure: false,
                                    controller: phoneController,
                                    keyboardType: TextInputType.phone,
                                  ),
                                  const SizedBox(height: 10),
                                  AuthPasswordTextField(
                                    labelText: "Password",
                                    hintText: "........",
                                    controller: passwordController,
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Text(
                                        "Already have an account? ",
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: widget.authPageToggle,
                                        child: const Text(
                                          "SignIn",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25),
                                  AuthGradientButton(
                                    onPressed: () {},
                                    buttonText: "SignUp",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

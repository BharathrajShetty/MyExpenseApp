import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_expense_app/components/auth_gradient_button.dart';
import 'package:my_expense_app/components/auth_input_text_fields.dart';
import 'package:my_expense_app/components/auth_password_textfield.dart';
import 'package:my_expense_app/functions/auth_functions.dart';

class SignInPage extends StatefulWidget {
  final void Function()? authPageToggle;
  const SignInPage({super.key, this.authPageToggle});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _phoneError = "xcfgvdxfdbgd djgd xjgd j gdjg dj gvfdjgv fxc hg";
  String _passwordError =
      "dgfsvfds fdsgfsdfgsdfvsdf sdgf sdfbsd fsdbf bsdf vsdgfvgsdf ";

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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        width: 300,
                        // height: 1350,
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
                                    "Welcome,",
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
                                    if (_phoneError.isNotEmpty)
                                      Text(
                                        _phoneError,
                                        style:
                                            const TextStyle(color: Colors.red),
                                      ),
                                    const SizedBox(height: 10),
                                    AuthPasswordTextField(
                                      labelText: "Password",
                                      hintText: "........",
                                      controller: passwordController,
                                    ),
                                    if (_passwordError.isNotEmpty)
                                      Text(
                                        _passwordError,
                                        style:
                                            const TextStyle(color: Colors.red),
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
                                          "Doesn't have an account? ",
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        GestureDetector(
                                            onTap: widget.authPageToggle,
                                            child: const Text(
                                              "SignUp",
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ))
                                      ],
                                    ),
                                    const SizedBox(height: 25),
                                    AuthGradientButton(
                                      onPressed: () {},
                                      buttonText: "SignIn",
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

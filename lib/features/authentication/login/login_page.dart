import 'package:flutter/material.dart';
import 'package:mudent_app/config/config.dart';
import 'package:mudent_app/core/core.dart';
import 'package:mudent_app/core/mudent_navigator/src/utils/constants/constants.dart';
import 'package:mudent_app/features/authentication/login/utils/constants/login_page_msg.dart';
import 'package:mudent_app/utils/constants/global_assets.dart';

import '../../../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DesignSystem.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(GlobalAssets.mainLogo)),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 550,
                  decoration: const BoxDecoration(
                    color: DesignSystem.g1,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            LoginPageMsg.login1stText,
                            style: TextStyle(fontSize: DesignSystem.fontSize1),
                          ),
                          const SizedBox(height: 8), // Added spacing
                          const Text(
                            LoginPageMsg.login2ndText,
                            style: TextStyle(fontSize: DesignSystem.fontSize2),
                          ),
                          const SizedBox(height: 16), // Added spacing
                          SizedBox(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          borderSide: const BorderSide(
                                            color: DesignSystem.primary,
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          borderSide: const BorderSide(
                                            color: DesignSystem.error,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                            borderSide: const BorderSide(
                                                color: DesignSystem.disable)),
                                        labelText: LoginPageMsg.emailLabel,
                                        labelStyle: const TextStyle(
                                            color: DesignSystem.g2)),
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
                                    validator: Validators.required(
                                        "Email is required"),
                                  ),
                                  const SizedBox(height: 32), // Added spacing
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: LoginPageMsg.passwordLabel,
                                      labelStyle: const TextStyle(
                                          color: DesignSystem.g2),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        borderSide: const BorderSide(
                                          color: DesignSystem.primary,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        borderSide: const BorderSide(
                                          color: DesignSystem.error,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          borderSide: const BorderSide(
                                              color: DesignSystem.disable)),
                                    ),
                                    obscureText: true,
                                    controller: passwordController,
                                    validator: Validators.required(
                                        "Password is required"),
                                  ),
                                  const SizedBox(height: 16), // Added spacing
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                              LoginPageMsg.forgetPwd),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16), // Added spacing
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: DesignSystem.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {
                                      bool validate =
                                          _formKey.currentState!.validate();
                                      if (validate) {
                                        MudentNavigator.instance
                                            .go(RoutePaths.mainPage);
                                        // Handle login logic here
                                      }
                                    },
                                    child: const SizedBox(
                                      width: 300,
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          LoginPageMsg.loginBtn,
                                          style: TextStyle(
                                            color: DesignSystem.g1,
                                            fontSize: DesignSystem.fontSize0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16), // Added spacing
                                  TextButton(
                                    onPressed: () {},
                                    child:
                                        const Text(LoginPageMsg.createNewAcc),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//TODO: Clean
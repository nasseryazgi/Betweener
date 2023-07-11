import 'dart:io';

import 'package:bootcamp_starter/controllers/AuthApiController.dart';
import 'package:bootcamp_starter/core/util/api_response.dart';
import 'package:bootcamp_starter/core/util/assets.dart';
import 'package:bootcamp_starter/core/widgets/custom_labeled_textfield_widget.dart';
import 'package:bootcamp_starter/core/widgets/primary_outlined_button_widget.dart';
import 'package:bootcamp_starter/core/widgets/secondary_button_widget.dart';
import 'package:bootcamp_starter/features/auth/register_view.dart';
import 'package:bootcamp_starter/features/main_app/main_app_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/google_button_widget.dart';

class LoginView extends StatelessWidget {
  static String id = '/loginView';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Hero(
                    tag: 'authImage',
                    child: SvgPicture.asset(AssetsData.authImage),
                  ),
                ),
                const Spacer(),
                PrimaryLabeledTextFieldWidget(
                  controller: emailController,
                  hint: 'example@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  label: 'Email',
                ),
                const SizedBox(
                  height: 14,
                ),
                PrimaryLabeledTextFieldWidget(
                  controller: passwordController,
                  hint: 'Enter password',
                  label: 'Password',
                  password: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                SecondaryButtonWidget(
                  onTap: () async {
                    String email = emailController.text;
                    String password = passwordController.text;

                    // Call the Login method from AuthApiController
                    AuthApiController authApiController = AuthApiController();
                    try {
                      String token = await authApiController.getUserToken(email, password);

                      // Successful login
                      Navigator.pushNamed(context, MainAppView.id);
                    } catch (e) {
                      // Error occurred
                      // Handle the error, such as displaying an error message
                      print(e.toString()); // For debugging purposes
                    }
                  },
                  text: 'LOGIN',
                ),
                const SizedBox(
                  height: 24,
                ),
                PrimaryOutlinedButtonWidget(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterView.id);
                  },
                  text: 'REGISTER',
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  '-  or  -',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                GoogleButtonWidget(onTap: () {}),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

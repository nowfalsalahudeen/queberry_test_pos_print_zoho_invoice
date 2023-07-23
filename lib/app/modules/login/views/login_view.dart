import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                'assets/login.png',
                width: 350,
                height: 300,
              )),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text('Login', style: Theme.of(context).textTheme.displayMedium)),
                    const SizedBox(height: 15),
                    Form(
                      key: controller.key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            key: const Key('emailField'),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email address',
                              isDense: true,
                              prefixIcon: Icon(
                                Icons.email,
                                size: 28,
                              ),
                            ),
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is required.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            key: const Key('passwordField'),
                            cursorColor: Theme.of(context).textTheme.headline1!.color,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                isDense: true,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 28,
                                )),
                            obscureText: true,
                            controller: controller.passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is required.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),
                          ElevatedButton(
                            key: const Key('loginButton'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              if (controller.key.currentState!.validate()) {
                                controller.doLogin();
                                // ref.read(authProvider.notifier).userLogin(_emailController.text, _passwordController.text);
                              }
                            },
                            child: const Text(
                              'Login',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New here?',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 12),
                  ),
                  InkWell(
                      child: Text(
                        ' Sign Up',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 13, color: Theme.of(context).primaryColor),
                      ),
                      onTap: () {
                        // context.push('/signup');
                        Get.toNamed(Routes.SIGNUP);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

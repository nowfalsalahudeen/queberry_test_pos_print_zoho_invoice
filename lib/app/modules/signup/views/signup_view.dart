import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
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
                  'assets/signup.png',
                  width: 260,
                  height: 250,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text('Sign Up', style: Theme.of(context).textTheme.displayMedium)),
                    const SizedBox(height: 15),
                    Form(
                      key: controller.key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            key: const Key('nameField'),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                              isDense: true,
                              prefixIcon: Icon(
                                Icons.person,
                                size: 28,
                              ),
                            ),
                            controller: controller.nameController,
                            keyboardType: TextInputType.name,
                            autocorrect: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name is required.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),
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
                            key: const Key('signupButton'),
                            onPressed: () {
                              if (controller.key.currentState!.validate()) {
                                controller.signUp(context);
                              }
                            },
                            child: const Text(
                              'Sign Up',
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
                    'Already have an account?',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12),
                  ),
                  InkWell(
                      child: Text(
                        ' Login',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 13, color: Theme.of(context).primaryColor),
                      ),
                      onTap: () {
                        Get.back();
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

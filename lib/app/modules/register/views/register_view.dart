import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D0D0F),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffD9D9D9),
                      ),
                    ),
                    const Text(
                      "Welcome new userPlease login to your account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffD9D9D9),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: controller.usernameController,
                          cursorColor: const Color(0xffD9D9D9),
                          style: const TextStyle(
                            color: Color(0xffD9D9D9),
                          ),
                          decoration: const InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                              color: Color(0xffD9D9D9),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextField(
                          controller: controller.emailController,
                          cursorColor: const Color(0xffD9D9D9),
                          style: const TextStyle(
                            color: Color(0xffD9D9D9),
                          ),
                          decoration: const InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Color(0xffD9D9D9),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Obx(
                          () => Column(
                            children: [
                              TextField(
                                obscureText: !controller.passwordVisible.value,
                                controller: controller.passwordController,
                                cursorColor: const Color(0xffD9D9D9),
                                style: const TextStyle(
                                  color: Color(0xffD9D9D9),
                                ),
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: const TextStyle(
                                    color: Color(0xffD9D9D9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      controller.passwordVisible.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      controller.passwordVisible.value =
                                          !controller.passwordVisible.value;
                                    },
                                    color: const Color(0xffD9D9D9),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextField(
                                obscureText:
                                    !controller.confirmpasswordVisible.value,
                                controller:
                                    controller.confirmpasswordController,
                                cursorColor: const Color(0xffD9D9D9),
                                style: const TextStyle(
                                  color: Color(0xffD9D9D9),
                                ),
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  labelStyle: const TextStyle(
                                    color: Color(0xffD9D9D9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      controller.confirmpasswordVisible.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      controller.confirmpasswordVisible.value =
                                          !controller
                                              .confirmpasswordVisible.value;
                                    },
                                    color: const Color(0xffD9D9D9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed('/login');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0D0D0F),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Color(0xff0D0D0F),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(
                    color: Color(0xffd9d9d9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        color: Color(0xffd9d9d9),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed('/login');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

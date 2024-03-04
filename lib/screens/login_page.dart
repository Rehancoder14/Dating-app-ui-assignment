import 'dart:ui';

import 'package:assignment/controller/home_controller.dart';
import 'package:assignment/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.transparent, // Set background color to transparent
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red
              .withOpacity(0.5), // Adjust opacity for the glass effect
          image: const DecorationImage(
            image: AssetImage('assets/loginbg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.25,
                horizontal: 10,
              ),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        // Adjust opacity for the glass effect
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {},
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: const Color(0xff999999),
                                    ),
                            decoration: const InputDecoration(
                              hintText: 'Username',
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 236, 234, 234),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Obx(
                            () => TextFormField(
                              obscureText:
                                  Get.find<HomeController>().isHidden.value,
                              controller: TextEditingController(),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              onChanged: (value) {},
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: const Color(0xff999999),
                                  ),
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                  ),
                                  onPressed: () {
                                    Get.to(const HomePage());
                                  },
                                  child: const Text(
                                    'Login',
                                  ),
                                ),
                              ),
                            ],
                          )
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
    );
  }
}

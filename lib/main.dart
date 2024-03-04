import 'package:assignment/Theme/theme_cubit.dart';
import 'package:assignment/controller/home_controller.dart';
import 'package:assignment/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            initialBinding: BindingsBuilder(() {
              Get.put(HomeController());
            }),
            home: const LoginPage(),
          );
        },
      ),
    );
  }
}

import 'package:assignment/controller/home_controller.dart';
import 'package:assignment/screens/components/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Your dates',
            style: TextStyle(color: Colors.black),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Get.find<HomeController>().getData();
              },
              icon: const Icon(
                Icons.refresh,
              ),
            )
          ],
        ),
        body: GetX<HomeController>(
          builder: (controller) {
            return controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : controller.userList.isEmpty
                    ? const Center(
                        child: Text('No users found'),
                      )
                    : ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.userList.length,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 5,
                        ),
                        itemBuilder: (context, index) {
                          return UserTile(
                            userList: controller.userList[index],
                          );
                        },
                      );
          },
        ),
      ),
    );
  }
}

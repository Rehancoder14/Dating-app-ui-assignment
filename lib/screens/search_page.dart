import 'package:assignment/controller/home_controller.dart';
import 'package:assignment/screens/components/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: GetX<HomeController>(builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.textController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {
                    controller.getSearchResult(value);
                  },
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color(0xff999999),
                      ),
                  decoration: const InputDecoration(
                    hintText: 'Search profile',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : controller.searchResult.isEmpty
                        ? Center(
                            child: Text(
                              "Search for result",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 12,
                                    color: const Color(0xff999999),
                                  ),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: controller.searchResult.length,
                              itemBuilder: (context, index) {
                                return UserTile(
                                  userList: controller.searchResult[index],
                                );
                              },
                            ),
                          ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

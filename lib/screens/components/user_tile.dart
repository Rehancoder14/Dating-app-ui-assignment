import 'package:assignment/model/people_model.dart';
import 'package:assignment/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserTile extends StatelessWidget {
  final PeopleModel userList;
  const UserTile({super.key, required this.userList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          40,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            40,
          ),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(
                  ProfilePage(
                    userList: userList,
                  ),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(userList.imgurl!),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.titleSmall,
                              children: <TextSpan>[
                            TextSpan(
                                text: '${userList.name}\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        // color: black2,
                                        fontSize: 18,
                                        height: 1.7)),
                            TextSpan(
                                text: "Interest ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 12,
                                      color: const Color(0xff999999),
                                    )),
                            TextSpan(
                                text: "in",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 12,
                                      color: const Color(0xffcccccc),
                                    )),
                            TextSpan(
                                text: "  Chess, Netflix, Cricket,etc",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 12,
                                      color: const Color(0xff999999),
                                    )),
                          ])),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "Profession: ",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: 12),
                          ),
                          Text(
                            "${userList.profession}",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Hobby",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: 12),
                          ),
                          Text(
                            '  ${userList.hobby}',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

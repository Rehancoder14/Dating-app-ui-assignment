import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:assignment/controller/home_controller.dart';
import 'package:assignment/model/people_model.dart';
import 'package:assignment/widgets/entry_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  final PeopleModel? userList;
  const ProfilePage({
    super.key,
    this.userList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: userList != null
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
                onPressed: () {
                  Get.back();
                },
              )
            : Container(),
        centerTitle: true,
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 17, fontWeight: FontWeight.w700),
        ),
        toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadedScaleAnimation(
                        scaleDuration: const Duration(milliseconds: 400),
                        fadeDuration: const Duration(milliseconds: 400),
                        child: Image.asset(
                          userList != null
                              ? userList!.imgurl!
                              : 'assets/img1.jpeg',
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userList != null
                                  ? userList!.name!
                                  : 'REHAN MAHAT',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              userList != null
                                  ? userList!.profession!
                                  : 'STUDENT',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      EntryField(
                        prefixIcon: Icons.account_circle,
                        initialValue: userList != null
                            ? userList!.profession!
                            : 'College student',
                      ),
                      const SizedBox(height: 20),
                      const EntryField(
                        prefixIcon: Icons.phone_iphone,
                        initialValue: '+91 7397941495',
                      ),
                      const SizedBox(height: 20),
                      const EntryField(
                        prefixIcon: Icons.mail,
                        initialValue: 'rehanmahat999@mail.com',
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'About',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).disabledColor,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      EntryField(
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, PageRoutes.addHospital);
                        },
                        maxLines: 3,
                        readOnly: true,
                        hint:
                            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        // initialValue: ' Apple Hospital, Wallington, New York',
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Coding languages',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: 15),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Edit',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: Theme.of(context).splashColor,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              Get.find<HomeController>().specifications.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                Get.find<HomeController>()
                                    .specifications[index]!,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '+5 more',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Theme.of(context).splashColor),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Skills',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Theme.of(context).disabledColor,
                                    fontSize: 15),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Edit",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: Theme.of(context).splashColor,
                                      fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              Get.find<HomeController>().languages.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                Get.find<HomeController>().languages[index]!,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '+1 more',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Theme.of(context).splashColor),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 16.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Address",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: Theme.of(context).disabledColor,
                                  fontSize: 15),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Select on map",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Theme.of(context).splashColor,
                                  fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                  child: EntryField(
                    prefixIcon: Icons.location_on,
                    initialValue: 'Pune, Maharastra',
                  ),
                ),
                const Divider(
                  thickness: 6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:assignment/model/people_model.dart';
import 'package:assignment/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<PeopleModel> userList = [];
  List<PeopleModel> searchResult = [];
  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;

  List<String?> languages = [
    ' Dart',
    ' Javascript',
    ' Java',
    ' C++',
    ' Python',
  ];
  List<String?> specifications = [
    "Flutter",
    "Node JS",
    "Flutter web",
    "MERN",
    "Angular",
    "HTML & CSS",
  ];
  TextEditingController textController = TextEditingController();
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    userList.clear();
    isLoading.value = true;
    userList = await HomeRepository.instance.getPeopleData();
    searchResult = userList;
    isLoading.value = false;
  }

  getSearchResult(String searchQuery) {
    isLoading.value = true;
    searchResult = userList
        .where(
          (element) => element.name!.toLowerCase().contains(
                searchQuery.toLowerCase(),
              ),
        )
        .toList();
    isLoading.value = false;
  }
}

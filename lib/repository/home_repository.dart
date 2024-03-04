import 'dart:convert';
import 'dart:developer';

import 'package:assignment/model/people_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  HomeRepository._();
  static final HomeRepository instance = HomeRepository._();

  Future<List<PeopleModel>> getPeopleData() async {
    try {
      var data = await rootBundle.loadString('assets/people.json');

      final Map<String, dynamic> jsonData = json.decode(data);
      final List<dynamic> jsonList = jsonData['status'];

      List<PeopleModel> people =
          jsonList.map((json) => PeopleModel.fromJson(json)).toList();

      return people;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

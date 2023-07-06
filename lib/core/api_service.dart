import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  Future getUsers() async {
    try {
      final response = await Dio(BaseOptions(baseUrl: "https://reqres.in/api/"))
          .get("users");
      log(response.data.toString());
      return response.data;
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}

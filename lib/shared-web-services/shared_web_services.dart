//to convert http response to user

import 'dart:convert';

import 'package:getx_details/models/user_model.dart';
import 'package:getx_details/util/app_api_constants.dart';
import 'package:http/http.dart' as http;

class SharedWebServices {
  static const SharedWebServices instance = SharedWebServices._internal();
  const SharedWebServices._internal();

  Future<List<Placeholer>?> placeholder() async {
    try {
      http.Response response = await http.get(
          Uri.parse(AppAPIsConstants.placeholders),
          headers: {"Content-type": "application/json"});
      List list = jsonDecode(response.body);
      return List.generate(
          list.length, (index) => Placeholer.fromJson(list[index]));
    } catch (e) {
      print('error occured-----$e');
      return null;
    }
  }
}

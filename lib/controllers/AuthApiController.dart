import 'dart:convert';
import 'dart:io';

import 'package:bootcamp_starter/SharedPrefencess/shared_pref_controller.dart';
import 'package:bootcamp_starter/core/util/api_response.dart';
import 'package:bootcamp_starter/features/auth/login_view.dart';
import 'package:bootcamp_starter/models/link_model.dart';
import 'package:http/http.dart' as http;

String loginurl = "http://osamapro.online/api/login";
class AuthApiController {
  Future<dynamic> Login ({required String email, required String password}) async {
    var uri = Uri.parse(loginurl);
    var response =
    await http.post(uri, body: {"email": email, "password": password});
    if (response.statusCode == 200 || response.statusCode == 400) {
      var jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Link link = Link.fromJson(jsonResponse['object']);
        await SharedPrefController().save(links:link);
        return link;

      }else return "Error";

    }

  }

}

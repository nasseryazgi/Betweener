import 'dart:convert';

import 'package:http/http.dart' as http;

import '../SharedPrefencess/shared_pref_controller.dart';
import '../core/util/constants.dart';

class AuthApiController {
  Future<String> getUserToken({required String email, required String password}) async {
    final String uri = "${baseUrl}/login";
    try {
      final response = await http.post(Uri.parse(uri), body: {"email": email, "password": password});
      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body);
        final String token = responseJson['token'];

        final sharedPrefController = SharedPrefController();
        await sharedPrefController.initPreferences();
        await sharedPrefController.saveToken(token ,userId: responseJson['user']['id'] ,name: responseJson['user']['name']);
        print("🎉🎉🎉");
        print(responseJson['user']['id']   );
        print(responseJson['user']['name']);
        return token;
      } else {
        throw Exception('Failed to get user token');
      }
    } catch (e) {
      throw Exception('Failed to connect to the API');
    }
  }
}

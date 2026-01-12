import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:userdata/model/auth_request.dart';

class AuthServices {
  static Future<Map<String, dynamic>> login(AuthRequest request) async {
    final response = await http.post(
      Uri.parse("http://10.218.201.253:3000/flutter_api/register.php"),
      headers: {"Content-Type": "application/json"},
      body: request.toLoginMap(),
    );
    return json.decode(response.body);
  }

  static Future<Map<String, dynamic>> register(AuthRequest request) async {
    final response = await http.post(
      Uri.parse("http://10.218.201.253:3000/flutter_api/login.php"),
      headers: {"Content-Type": "application/json"},
      body: request.toRegisterMap(),
    );
    return json.decode(response.body);
  }
}

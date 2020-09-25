import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

Future<dynamic> getUsers(BuildContext context) async {
  final url = 'https://jsonplaceholder.typicode.com/users';
  final response = await http.get(url);
  {
    final parsed = jsonDecode(response.body);
    print(response.body);
    print(url);
    return parsed;
  }
}

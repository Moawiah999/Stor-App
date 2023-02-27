import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "Ther is a problem with statusCode ${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, dynamic> headers = {};

    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "Ther is a problem with statusCode ${response.statusCode} with bady ${response.body}");
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, dynamic> headers = {};
//headers.addAll({"":""});
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "Ther is a problem with statusCode ${response.statusCode} with bady ${response.body}");
    }
  }
}

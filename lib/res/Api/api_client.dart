import 'dart:io';

import 'package:dio/dio.dart';

class ApiClient{

  final String rootUrl = 'https://jsonplaceholder.typicode.com/';

  static Map<String, String> commonHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };




}
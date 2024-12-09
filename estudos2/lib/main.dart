import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);
}

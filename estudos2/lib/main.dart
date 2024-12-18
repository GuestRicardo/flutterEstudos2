import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';

void main() async {
  //a busca
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/');
  final future = http.get(uri);
  //resultado
  future.then((response) => {
        if (response.statusCode == 200){
            print(json.decode(response.body)),            
            var list = json.decode(response.body) as List,
            list.forEach((element) {
              print(element['title']);
            }),
          }else{
            print('erro ao carregar a pagina')}
      });
}

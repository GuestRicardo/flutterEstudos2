import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() async {
  //a busca
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  final future = http.get(uri);
  //resultado
  future.then((response) => {
    if(response.statusCode == 200){
     print('pagina carregada com sucesso') 
    } else {
      print('erro ao carregar a pagina')
    }

  });
}

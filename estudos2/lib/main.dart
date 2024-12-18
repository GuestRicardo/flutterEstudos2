import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';

void main() async {
  //a busca
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
  print(uri);
  final future = http.get(uri);
  //resultado
  future.then((response) => {
        if (response.statusCode == 200){
          print('pagina carregada com sucesso!'),

            print(json.decode(response.body)),    

            Map<String, dynamic> dados = json.decode(response.body),
           print(dados),
            // var list = json.decode(response.body) as List,
            // list.forEach((element) {
            //   print(element['title']);
            // }),
          }else{
            print('erro ao carregar a pagina')}
      });
}

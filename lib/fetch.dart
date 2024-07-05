import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'item.dart';

Future<List<Item>> fetchFakeData() async {
  // Simulate a network request
  // await Future.delayed(Duration(seconds: 2));

  var url = Uri.parse('https://api.elaboradopor.com/api/products');
  Response response = await http.get(url);

  // Sample JSON response
  // var jsonResponse = [
  //   {"id": 1, "name": "Item 1"},
  //   {"id": 2, "name": "Item 2"},
  // ];

  // return jsonResponse.map((item) => Item.fromJson(item)).toList();
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonResponse = json.decode(response.body);
    List<Item> items =  jsonResponse['data'].map<Item>((item) => Item.fromJson(item)).toList();
    return items;
  } else {
    throw Exception('Failed to load data from API');
  }
}
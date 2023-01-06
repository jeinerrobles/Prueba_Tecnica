import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/productos.dart';


Future<List<Producto>> listarPost(http.Client client) async {
 
  final response = await http.get(Uri.parse(
      'https://fakestoreapi.com/products'));

  return compute(pasaraListas, response.body);
}


List<Producto> pasaraListas(String responseBody) {
  final pasar = json.decode(responseBody).cast<Map<String, dynamic>>();

  return pasar.map<Producto>((json) => Producto.fromJson(json)).toList();
}












// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/peticiones/peticiones_productos.dart';

class ListaProducto extends StatefulWidget {
  const ListaProducto({Key key}) : super(key: key);


  @override
  _ListaProductoState createState() => _ListaProductoState();
}

class _ListaProductoState extends State<ListaProducto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
       appBar: AppBar(
        title: Text('Lista de Productos'),
        backgroundColor: Color.fromARGB(255, 0, 170, 105),
        
      ), 
        body:  listar(),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 0, 170, 105),
        onPressed: () {
          setState(() {
            listar();
          });
        },
        tooltip: 'Refrescar',
        child: Icon(Icons.refresh),
      ),
          );
  }

}

// ignore: camel_case_types
class listar extends StatelessWidget {
  const listar({Key key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    future: listarPost(http.Client()), 
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      switch (snapshot.connectionState) {


        case ConnectionState.waiting:
          return Center(child: CircularProgressIndicator());

        case ConnectionState.done:
          if (snapshot.hasError) return Text('Error: ${snapshot.error}');
          return snapshot.data != null
      ? ListView.builder(
        itemCount: snapshot.data.length == 0 ? 0 : snapshot.data.length,
        itemBuilder: (context, posicion) {
          return Card(
          child: ListTile(
    leading: Image.network(snapshot.data[posicion].image,height: 50, width: 50,), 
    title: Text(snapshot.data[posicion].title),
    subtitle: Text(snapshot.data[posicion].category),
    trailing: Text(snapshot.data[posicion].price.toString(),
        style: TextStyle(
          color: Colors.green,
        ),
      ),
          ),
      );
        })
      : Text('Sin Datos');

        default:
          return Text('Presiona el boton para recargar');
      }
    },
  );
  }
}
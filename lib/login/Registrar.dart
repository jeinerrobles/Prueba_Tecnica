
// ignore_for_file: use_build_context_synchronously, use_key_in_widget_constructors

import 'dart:convert';

import 'package:prueba_tecnica/peticiones/peticiones_usuario.dart';
import 'package:prueba_tecnica/widget/messagewidget.dart';
import 'package:flutter/material.dart'; 

import 'package:http/http.dart' as http;

class Registrar extends StatefulWidget {

  @override
  State<Registrar> createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Registro',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 30,
                  color: Color.fromARGB(255, 0, 170, 105)
                ),
              ),


              
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVSy0exCr64xMPehAHCGtNxKWqtiJXoyLJvA&usqp=CAU"),
              ),

              
              TextField(
                controller: controlUser,
                decoration: const InputDecoration(labelText: 'Ingrese el Correo/Usuario'),
              ),
              TextField(
                controller: controlPassword,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Ingrese la Contraseña'),
              ),

              const SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  const SizedBox(width: 20,),
                  
                  IconButton(onPressed: () {
                      if (controlUser.text.isNotEmpty &&
                            controlPassword.text.isNotEmpty) {
                        
                            verificarLogueo(controlUser.text,controlPassword.text);
                           } else {
                            MessageWidget.advertencia(
                            context, "Complete los campos usuario y contraseña para registrar", 4);
                      }
                       
                    
                    }, 
                    icon: const Icon(Icons.app_registration_rounded)
                  ),
                  const SizedBox(width: 1,),
                  const Text("Registrarse"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void verificarLogueo(usuario,contrasena) async {
  var url = Uri.parse(
      "https://rubcarproheladeria.000webhostapp.com/proyectoheladeria/verificarregistro.php");

var response =  await http.post(url, body: {
    'usuario': usuario
  });
var datos = jsonDecode(response.body);
if(datos!= 0){

      MessageWidget.advertencia(context, "Este usuario o correo ya existe", 4);
    } else {
      adicionarUsuario(usuario, contrasena);
      MessageWidget.confirmacion(context, "Registrado correctamente", 4);
    }
 
}
}

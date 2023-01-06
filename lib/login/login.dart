// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, use_key_in_widget_constructors

import 'dart:convert';

import 'package:prueba_tecnica/screens/home/home_screen.dart';
import 'package:prueba_tecnica/widget/messagewidget.dart';
import 'package:flutter/material.dart'; 

import 'package:http/http.dart' as http;

import 'Registrar.dart';

class Login extends StatefulWidget {
 

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                'Prueba Tecnica Flutter Dev',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
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
                  IconButton(onPressed: () {
                       if (controlUser.text.isNotEmpty &&
                            controlPassword.text.isNotEmpty) {
                        
                            verificarLogueo(controlUser.text, controlPassword.text);
                           } else {
                            MessageWidget.advertencia(
                            context, "Complete los campos usuario y contraseña para ingresar", 4);
                      }
                     
                    }, 
                    icon: const Icon(Icons.login)
                  ),
                  const SizedBox(width: 1,),
                  const Text("Acceder"),

                  const SizedBox(width: 20,),
                  
                  IconButton(onPressed: () {
                     
                       
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registrar(),)); 
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
      "https://rubcarproheladeria.000webhostapp.com/proyectoheladeria/consultarlogueo.php");

var response =  await http.post(url, body: {
    'usuario': usuario, 'contrasena': contrasena
  });
var datos = jsonDecode(response.body);
if(datos!= 0){
 Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomeScreen()));
}else{
  MessageWidget.advertencia(
                            context, "Usuario y/o contraseña incorrectos", 4);
}
 
}
}

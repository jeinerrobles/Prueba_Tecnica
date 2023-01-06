import 'package:http/http.dart' as http;


void adicionarUsuario(
    String usuario,
    String contrasena) async {
  var url = Uri.parse(
      "https://rubcarproheladeria.000webhostapp.com/proyectoheladeria/adicionarusuario.php");

  await http.post(url, body: {
    'usuario': usuario,
    'contrasena': contrasena,
});
}
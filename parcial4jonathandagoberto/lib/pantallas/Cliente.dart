import 'package:flutter/material.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
            debugShowCheckedModeBanner: false,
      title: 'Formulario de Registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _apellidoController = TextEditingController();
  TextEditingController _ciudadController = TextEditingController();
  TextEditingController _direccionController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
    _apellidoController.dispose();
    _ciudadController.dispose();
    _direccionController.dispose();

    super.dispose();
  }
/*
  void _submitForm() {
    if (_formKey.currentState.validate()) {
      // Aquí puedes agregar la lógica para enviar los datos de registro al servidor
      // o realizar cualquier otra acción necesaria.
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      // Imprimir los datos de registro en la consola
      print('Name: $name');
      print('Email: $email');
      print('Password: $password');

      // Reiniciar los campos del formulario
      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Registro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
              height: 10,
              ),
              Image.network("https://cdn-icons-png.flaticon.com/512/6073/6073874.png",width: 300,height: 300,),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nombre'),                
              ),
              SizedBox(
              height: 10,
              ),
              TextFormField(
                controller: _apellidoController,
                decoration: InputDecoration(labelText: 'Apellido'),                
              ),
              SizedBox(
              height: 10,
              ),
              TextFormField(
                controller: _ciudadController,
                decoration: InputDecoration(labelText: 'Ciudad'),                
              ),
              SizedBox(
              height: 10,
              ),
              TextFormField(
                controller: _direccionController,
                decoration: InputDecoration(labelText: 'Direccion'),                
              ),
              SizedBox(
              height: 10,
              ),
               ElevatedButton(
                onPressed: () {
                  // Acción del tercer botón
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Espaciado interno del botón
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Borde redondeado
                    color: Color.fromARGB(90, 98, 179, 226), // Color de fondo del botón
                  ),
                  child: Text(
                    'Agregar',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 16, // Tamaño de fuente del texto del botón
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
              ),
              SizedBox(width: 10), // Espacio entre botones
               ElevatedButton(
                onPressed: () {
                  // Acción del tercer botón
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Espaciado interno del botón
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Borde redondeado
                    color:Color.fromARGB(90, 98, 179, 226), // Color de fondo del botón
                  ),
                  child: Text(
                    'Actualizar',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 16, // Tamaño de fuente del texto del botón
                    ),
                  ),
                ),
              ),
              SizedBox(
              height: 10,
              ),
              SizedBox(width: 10), // Espacio entre botones
               ElevatedButton(
                onPressed: () {
                  // Acción del tercer botón
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Espaciado interno del botón
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Borde redondeado
                    color: Color.fromARGB(90, 98, 179, 226), // Color de fondo del botón
                  ),
                  child: Text(
                    'Eliminar',
                    style: TextStyle(
                      color: Colors.white, // Color del texto del botón
                      fontSize: 16, // Tamaño de fuente del texto del botón
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
      
    );
  }
}
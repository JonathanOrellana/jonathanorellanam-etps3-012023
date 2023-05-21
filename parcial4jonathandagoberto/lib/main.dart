import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:parcial4jonathandagoberto/services/firebase.dart';
import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Parcial4app());
}

class Parcial4app extends StatelessWidget {
  const Parcial4app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial4',
      home: Scaffold(appBar: AppBar(
        title: Text('Parcial4'),
        ),body: FutureBuilder(
          future:getClientes(),
          builder: ((context,snapshot){
            return ListView.builder(itemCount: snapshot.data?.length,
            itemBuilder: (context,index){
              return Text(snapshot.data?[index] ['sNombreCliente']);
             }
            );
          }),)
      )

        );
  }
}

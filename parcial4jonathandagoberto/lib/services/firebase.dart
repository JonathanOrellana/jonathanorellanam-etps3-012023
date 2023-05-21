import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD=FirebaseFirestore.instance;
Future<List>getClientes() async{

List clientes= [];
CollectionReference collectionReferenceClientes = baseD.collection('MD_Clientes');
QuerySnapshot queryClientes= await collectionReferenceClientes.get();

queryClientes.docs.forEach((documento) { 
  clientes.add(documento.data());
  });
return clientes;


}
import 'package:flutter/material.dart';

void main() {
  runApp( Contenedores());
}

class Contenedores extends StatelessWidget {
  const Contenedores({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainesF(),
    );
  }
}
class ContainesF extends StatefulWidget {
  const ContainesF({super.key});
//cambia
  @override
  State<ContainesF> createState() => _ContainesFState();
}

class _ContainesFState extends State<ContainesF> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.all(50),
          alignment: Alignment(0,0),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
           // border: Border.all(color: Colors.black,width: 10),
            //shape: BoxShape.circle
            borderRadius: BorderRadius.circular(5)
          ,
        //child: Text("Recuadro",style: TextStyle(fontSize: 20)
        boxShadow:[
BoxShadow(
  color: Colors.grey.shade500,
  offset: Offset(4.0,4.0),
  blurRadius: 15.0,spreadRadius:1.0)
  
  BoxShadow(color: Colors.white,
  offset: Offset(4.0,4.0),
  blurRadius: 15.0,spreadRadius:1.0)),

         ],

        )
        ,),
        ),
      ),
    );
  }
}

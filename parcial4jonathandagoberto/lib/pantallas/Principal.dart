import 'package:flutter/material.dart';
import 'package:parcial4jonathandagoberto/pantallas/Cliente.dart';
import 'package:parcial4jonathandagoberto/pantallas/Vehiculo.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}
 
class _principalState extends State<principal> {
int _seleccionado = 0;
  void _barraNavega(int index){
    setState(() {
      _seleccionado = index;
    });
  }
    final List<Widget> _paginas = [
    
    Cliente(),
    Marca(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_seleccionado],
      
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _seleccionado,
          onTap: _barraNavega,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person_add), label: 'Cliente'),
            BottomNavigationBarItem(icon: Icon(Icons.car_rental_outlined), label: 'Vehiculo')
          ]),
    );
  }
}
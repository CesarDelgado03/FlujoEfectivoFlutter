import 'package:flutter/material.dart';
import 'Menu.dart';

class PaginaInicio extends StatelessWidget{
  @override Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Control Flujo Efectivo'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: Drawer(
            child: Menu()
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Hola, Juan!', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/images/avatar1.jpg'),
                  height: 250,
                  width: 250,
                ),
              ),
            ),

          ],
        )

    );
  }
}
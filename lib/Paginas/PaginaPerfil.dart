import 'package:flutter/material.dart';
import 'Menu.dart';

class PaginaPerfil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Control Flujo Efectivo'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: Drawer(
            child: Menu()
        ),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Datos del Usuario', style: TextStyle(fontSize: 24.0),),
                TextFormField(decoration: const InputDecoration(hintText: 'Nombres',)),
                TextFormField(decoration: const InputDecoration(hintText: 'Apellidos',)),
                TextFormField(decoration: const InputDecoration(hintText: 'Entrada Mensual Principal',)),
                TextFormField(decoration: const InputDecoration(hintText: 'Cargo',)),
                TextFormField(decoration: const InputDecoration(hintText: 'Imagen',)),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {},
                  child: Text('Grabar',style: TextStyle(fontSize: 18.0),),
                )
              ],
            ),
          ),
        )
    );
  }
}
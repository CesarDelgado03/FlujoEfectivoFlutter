import 'package:flutter/material.dart';
import 'AgregarEntrada.dart';
import 'AgregarSalida.dart';
import 'PaginaInicio.dart';
import 'PaginaPerfil.dart';
import 'ReporteActual.dart';
import 'ReporteAnterior.dart';

class Menu extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: Text(
            'Lista de Opciones',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio',style: TextStyle(fontSize: 22.0,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaInicio()));},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Editar Perfil',style: TextStyle(fontSize: 22.0,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaPerfil()));},
        ),
        ListTile(
          leading: Icon(Icons.border_inner),
          title: Text('Entradas de Efectivo',style: TextStyle(fontSize: 22.0,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AgregarEntrada()));},
        ),
        ListTile(
          leading: Icon(Icons.border_horizontal),
          title: Text('Salidas de Efectivo',style: TextStyle(fontSize: 22.0,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AgregarSalida()));},
        ),
        ListTile(
          leading: Icon(Icons.art_track),
          title: Text('Reporte del Mes',style: TextStyle(fontSize: 22.0,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ReporteActual()));},
        ),
        ListTile(
          leading: Icon(Icons.youtube_searched_for),
          title: Text('Reporte Anterior',style: TextStyle(fontSize: 24.0,color: Colors.deepPurpleAccent,fontStyle: FontStyle.italic),),
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ReporteAnterior()));},
        ),
      ],
    );

  }
}
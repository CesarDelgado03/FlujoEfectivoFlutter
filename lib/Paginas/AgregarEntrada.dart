import 'package:flutter/material.dart';
import 'Menu.dart';

class AgregarEntrada extends StatelessWidget{
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text('Entradas de Efectivo', style: TextStyle(fontSize: 24.0),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Monto',)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Descripción',)
                ),
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {},
                child: Text('Agregar Entrada',style: TextStyle(fontSize: 18.0),),
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.all(10.0),
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text('Monto', style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0),),),
                    DataColumn(
                      label: Text('Descripción', style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0),),),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('45000', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('Salario Mensual', style: TextStyle(fontSize: 18.0),)),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('15000', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('Clases de Ingles', style: TextStyle(fontSize: 18.0),)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
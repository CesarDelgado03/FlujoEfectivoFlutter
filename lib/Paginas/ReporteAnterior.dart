import 'package:flutter/material.dart';
import 'Menu.dart';

class ReporteAnterior extends StatelessWidget{
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
              Text('Historial de Entradas y Salidas', style: TextStyle(fontSize: 24.0),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Fecha Inicio',)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Fecha Fin',)
                ),
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {},
                child: Text('Buscar',style: TextStyle(fontSize: 18.0),),
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.all(0.0),
                margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text('Monto', style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0),),),
                    DataColumn(
                      label: Text('Descripción', style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0),),),
                    DataColumn(
                      label: Text('Fecha', style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20.0),),),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('10000', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('Alquiler de casa', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('01/10/2020', style: TextStyle(fontSize: 18.0),)),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('1500', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('Gasolina', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('01/10/2020', style: TextStyle(fontSize: 18.0),)),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('125', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('Paleta Magnun', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('05/10/2020', style: TextStyle(fontSize: 18.0),)),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('370', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('Hamburguesa', style: TextStyle(fontSize: 18.0),)),
                        DataCell(Text('08/10/2020', style: TextStyle(fontSize: 18.0),)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );

  }
}
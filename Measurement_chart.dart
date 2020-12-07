import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_measurement/Measurement.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'Tank.dart';

class MeasurementChart extends StatelessWidget{
  final List<Measurement> data;
  final Tank tank;

  MeasurementChart({
    @required this.data,
    @required this.tank
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<charts.Series<Measurement,num>> misurazioni = [
      charts.Series(
          id: 'Misurazioni',
          data: data,
          domainFn: (Measurement m,_) => m.createdat,
          measureFn: (Measurement m,_) => m.data,
          colorFn: (Measurement m,_) => m.barColor
      )
    ];
    return SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 160, 25, 29),
                ),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Card(
                        elevation: 3,
                        shape: StadiumBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 160, 25, 29),
                              width: 1.0,
                            )
                        ),
                        child: InkWell(
                          customBorder: StadiumBorder(
                              side: BorderSide(
                                color: Color.fromARGB(255, 160, 25, 29),
                                width: 1.0,
                              )
                          ),
                          onTap: () => print("Ciao"),
                          child: ListTile(
                              leading: Icon(Icons.adjust_sharp, color: Colors.orange[800], size: 20),//questo verrà sositutito dll'asset passato
                              //dalla chiamata al server
                              title: Text(tank.type)
                          ),
                        ),
                      )
                  ),
                  Expanded(child: charts.LineChart(misurazioni,animate: true)
                  ),
                ],
              ),
            ),
          ),
        )
    );

  }


}
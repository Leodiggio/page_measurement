import 'package:flutter/material.dart';
import 'package:page_measurement/Measurement_chart.dart';
import 'package:page_measurement/Tank.dart';

import 'Measurement.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyApp());
}

class MyPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SERBATOIO 1"),
        backgroundColor: Color.fromARGB(255, 160, 25, 29),
      ),

      body: MyListView()._myListViewWithCustomIconAndCard(context),
    );
  }

}

class MyListView extends StatelessWidget {

  Widget _myListViewWithCustomIconAndCard(BuildContext context) {

    final List<Measurement> data = [
      Measurement(createdat: 00.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 01.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 02.00, data: 17, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 03.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 04.00, data: 14, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 05.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 06.00, data: 14, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 07.00, data: 13, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 08.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 09.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 10.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 11.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 12.00, data: 17, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 13.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 14.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 15.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 16.00, data: 23, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 17.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 18.00, data: 12, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 19.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 20.00, data: 14, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 21.00, data: 13, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 22.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 23.00, data: 10, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29)))];

    final tank = new Tank(label: 'TANK 1', code: 'A', flags: 1, capacity: 15.0, measurement: data, setpoint: 12.0,type: 'VINIFICATORE');

    return ListView(
      children: <Widget>[
        MeasurementChart(data: data, tank: tank),
        Row(
          children: <Widget>[
            Container(
              width: 10,
            ),Container(
                child: Stack(children: <Widget>[ Image.asset('assets/images/serbatoio.jpeg'),
                ],
                ),
              width: 110,
            )
          ],
        )
      ],
    );
  }

  Widget build(BuildContext context) => Container();

}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'assets',
        home: MyPage()
    );
  }
}

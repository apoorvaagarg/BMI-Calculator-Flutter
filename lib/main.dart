import 'package:bmi_caluculator/imperial.dart';
import 'package:bmi_caluculator/metric.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'BMI Calculator';

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: DefaultTabController(  
        length: 2,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text('BMI Calculator'),  
            bottom: const TabBar(  
              tabs: [  
                Tab(icon: Icon(Icons.calculate), text: "Metric"),  
                Tab(icon: Icon(Icons.calculate), text: "Imperial")  
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              Metric(),  
              Imperial(),  
            ],  
          ),  
        ),  
      ),  
    );
  }
}


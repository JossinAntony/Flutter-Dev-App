

import 'package:flutter/material.dart';

class Add extends StatelessWidget {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ADD'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: num1Cntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: Icon(Icons.exposure_plus_1),
                  hintText: 'Enter the first number',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: num2Cntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: Icon(Icons.exposure_plus_2),
                  hintText: 'Enter the second number',
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: (){
                  double num1 = double.parse(num1Cntrlr.text);
                  double num2 = double.parse(num2Cntrlr.text);
                  double sum = num1 + num2;
                  print(sum.toStringAsFixed(2));
                },
                color: Colors.blue,
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

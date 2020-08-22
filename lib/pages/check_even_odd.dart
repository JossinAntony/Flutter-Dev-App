

import 'package:flutter/material.dart';

class CheckEvenOdd extends StatelessWidget {

  void _checkEvenOdd(var1){
    if((var1 % 2) == 0){
      print('$var1 is even');
    }else{
      print('$var1 is odd');
    }
  }

  TextEditingController numCntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check Even/ Odd'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: numCntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: Icon(Icons.filter_1),
                  hintText: 'Enter the number',
                ),
              ),

              SizedBox(height:70),

              RaisedButton(
                onPressed: (){
                  _checkEvenOdd(double.parse(numCntrlr.text));
                },
                color: Colors.blueAccent,
                child: Text('SUBMIT'),
              ),
            ],
          ),
        )
      )
    );
  }
}

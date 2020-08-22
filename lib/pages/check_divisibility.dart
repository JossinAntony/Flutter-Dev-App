

import 'package:flutter/material.dart';

class CheckDivisibilityby5 extends StatelessWidget {

  void _checkDivisibilityBy5(var1){
    if((var1 % 5) == 0){
      print('$var1 divisible by 5');
    }else{
      print('$var1 not divisible by 5');
    }
  }

  TextEditingController numCntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Divisibility by 5'),
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
                  prefixIcon: Icon(Icons.filter_5),
                  hintText: 'Enter the number whose divisibility by five has to be checked',
                ),
              ),

              SizedBox(height:70),

              RaisedButton(
                onPressed: (){
                  _checkDivisibilityBy5(double.parse(numCntrlr.text));
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

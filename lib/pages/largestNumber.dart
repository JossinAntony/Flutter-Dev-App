

import 'package:flutter/material.dart';

class LargestNumber extends StatelessWidget {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();
  TextEditingController num3Cntrlr = TextEditingController();

  double _largestNo(double var1, double var2, double var3){
    if(var1 >= var2){
      if(var1 >= var3){
        return(var1);
      }else{
        return(var3);
      }
    }else {
      if(var2 >= var3){
        return(var2);
      }else{
        return(var3);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Largest of Three'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: num1Cntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.filter_1),
                  hintText: 'Enter the first number',
                ),
              ),

              SizedBox(height:30),

              TextField(
                controller: num2Cntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.filter_2),
                  hintText: 'Enter the first number',
                ),
              ),

              SizedBox(height:30),

              TextField(
                controller: num3Cntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.filter_3),
                  hintText: 'Enter the first number',
                ),
              ),

              SizedBox(height:30),

              RaisedButton(
                onPressed: (){
                  var num = _largestNo(double.parse(num1Cntrlr.text), double.parse(num2Cntrlr.text), double.parse(num3Cntrlr.text));
                  print(num);
                },
                color: Colors.blueAccent,
                child: Text('Get Largest'),

              )


            ],
          )
        ),
      )
    );
  }
}

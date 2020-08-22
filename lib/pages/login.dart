

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  TextEditingController unameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(18.0),
            child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Text("Username"),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: unameController,
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Icon(Icons.account_circle),
                      ),
                    ),
                    //Text("Password"),
                    SizedBox(height: 20.0,),
                    TextField(
                      controller: pwdController,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    /*
                    RaisedButton(
                      onPressed: (){
                        //print('Hello World!');
                        var uname = unameController.text;
                        var pwd = pwdController.text;

                        print(uname);
                        print(pwd);
                      },
                      color: Colors.blue,
                      child: Text("Log In"),
                    )
                    */
                    Container(
                      height:60,
                      width: 500,
                      child: Center(
                        child: Text('Log In'),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12.0),
                      ),

                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
    //return Text("Hello World!");
  }
}
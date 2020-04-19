import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============================================================
      // 1) APP BAR
      //============================================================       
      appBar: AppBar(title: Text('Signup Page'),),
      //============================================================
      // 2) BODY
      //============================================================      
      body: SafeArea(
        child: Column(children: <Widget>[
      //============================================================
      // 3) WIDGET: TEXTBOX
      //============================================================                
            TextFormField(decoration: InputDecoration(labelText:'E-mail', prefixIcon: Icon(Icons.email)),),
            TextFormField(decoration: InputDecoration(labelText:'Full Name', prefixIcon: Icon(Icons.near_me)),),    
            TextFormField(decoration: InputDecoration(labelText:'Mobile No', prefixIcon: Icon(Icons.phone)),),   
            TextFormField(decoration: InputDecoration(labelText:'Password', prefixIcon: Icon(Icons.vpn_key)),),      
            TextFormField(decoration: InputDecoration(labelText:'Line ID', prefixIcon: Icon(Icons.network_cell)),),   
            TextFormField(decoration: InputDecoration(labelText:'Company', prefixIcon: Icon(Icons.home)),),     
      //============================================================
      // 4) RAISE BUTTON
      //============================================================    
          RaisedButton(onPressed: (){},child: Text('SAVE'),),   
          // RaisedButton(onPressed: (){},child: Text('CANCEL'),),                                                                         
        ],),
      ),  
      
    );
  }
}
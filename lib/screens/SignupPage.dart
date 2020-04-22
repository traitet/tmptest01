import 'package:flutter/material.dart';
import 'package:tmptest01/services/logger_service.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
      //============================================================
      // 1) DECLARE TEXT EDIT CONTROLLER
      //============================================================   
      final _usernameController = TextEditingController();
      final _passwordController = TextEditingController();
      final _fullnameController = TextEditingController();  
      final _lineidController = TextEditingController();    
      final _mobilenoController = TextEditingController();  
      final _companyController = TextEditingController();  
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
          TextFormField(decoration: InputDecoration(labelText: '*E-mail', prefixIcon: Icon(Icons.email)),controller: _usernameController),
          TextFormField(decoration: InputDecoration(labelText: '*Full Name', prefixIcon: Icon(Icons.near_me)),controller: _fullnameController,),
          TextFormField(decoration: InputDecoration(labelText: '*Password', prefixIcon: Icon(Icons.vpn_key)),controller: _passwordController),                         
          TextFormField(decoration: InputDecoration(labelText: 'Line ID', prefixIcon: Icon(Icons.network_cell)),controller: _lineidController),
          TextFormField(decoration: InputDecoration(labelText: 'Mobile No', prefixIcon: Icon(Icons.phone)),controller: _mobilenoController,keyboardType: TextInputType.number,),                                    
          TextFormField(decoration: InputDecoration(labelText: 'Company', prefixIcon: Icon(Icons.home)),controller: _companyController,),        
      //============================================================
      // 4) RAISE BUTTON
      //============================================================    
          RaisedButton(onPressed: (){
            logger.i("username: " + _usernameController.text);
          },child: Text('SAVE'),),                                                                     
        ],),
      ),  
      
    );
  }
}
import 'package:flutter/material.dart';


class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact us'),
        backgroundColor: Color(0xff8c00ff),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 8,),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  Icon(Icons.account_box,size: 25,),
                  SizedBox(width: 8,),
                  Text('Name',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              SizedBox(width: 8,),
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(
                    //labelText: 'Name'
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  Icon(Icons.email,size: 25,),
                  SizedBox(width: 8,),
                  Text('Email',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              SizedBox(width: 8,),
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(
                    //labelText: 'Email'
                  ),

                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 8,),
                  Icon(Icons.message,size: 25,),
                  SizedBox(width: 8,),
                  Text('Message',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              SizedBox(width: 8,),
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(
                    //labelText: 'Message'
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                ),
              ),
              SizedBox(height: 16,),
              RaisedButton(
                color: Color(0xff8c00ff),
                child: Text('Send',style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}

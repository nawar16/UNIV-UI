import 'package:flutter/material.dart';
import './main.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:16),
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(10.0, 16.0, 0.0, 0.0),
                        child: Icon(Icons.person_add,size: 40,)
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(55.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'SignUp',
                        style:
                        TextStyle(fontSize:40.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    //SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.person),
                        SizedBox(width: 4,),
                        Text('FullName',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'FULL NAME',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email),
                        SizedBox(width: 4,),
                        Text('Email',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.lock),
                        SizedBox(width: 4,),
                        Text('Password',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                      obscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.account_balance),
                        SizedBox(width: 4,),
                        Text('Collage',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'COLLAGE ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.school),
                        SizedBox(width: 4,),
                        Text('Stude Year',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'STUDY Year',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.date_range),
                        SizedBox(width: 4,),
                        Text('Birth Date',style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'mm/dd/yy',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.purpleAccent,
                          color: Colors.purple,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'SIGNUP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child:

                          Center(
                            child: Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                          ),


                        ),
                      ),
                    ),
                  ],
                ),),],),
        )
    );
  }
}

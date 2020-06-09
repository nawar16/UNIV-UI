import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class myClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {

    final nameField = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20, 15),
        hintText: "Name",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final emailField = TextFormField(
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final passField = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final collageField = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20, 15),
        hintText: "Collage",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final yearField = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20, 15),
        hintText: "Study Year",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final dateField = TextFormField(
      obscureText: false,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20,15,20, 15),
        hintText: "Birth Date",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final registerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(50),
      color: Colors.purple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20,15,20,15),
        onPressed: (){},
        child: Text("Register",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              color: Colors.white70,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //SizedBox(height: 15,),
                  ClipPath(
                    clipper: myClipper(),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.purple,

                      ),
                      child: Center(
                        child: Text('Register',style: TextStyle(
                            color: Colors.white,fontFamily: 'MyFont',fontSize: 50
                        ),),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Form(
                      child:Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 45,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person),
                                SizedBox(width: 4,),
                                Text('FullName',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            nameField,
                            SizedBox(height: 25,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.email),
                                SizedBox(width: 4,),
                                Text('Email',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            emailField,
                            SizedBox(height: 25,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.lock),
                                SizedBox(width: 4,),
                                Text('Password',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                              ],
                            ),
                            SizedBox(height: 8),
                            passField,
                            SizedBox(height: 25,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.account_balance),
                                SizedBox(width: 4,),
                                Text('Collage',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            collageField,
                            SizedBox(height: 25,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.school),
                                SizedBox(width: 4,),
                                Text('Stude Year',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                              ],
                            ),
                            SizedBox(height: 8),
                            yearField,
                            SizedBox(height: 25,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.date_range),
                                SizedBox(width: 4,),
                                Text('Birth Date',style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                              ],
                            ),
                            SizedBox(height: 8),
                            dateField,
                            SizedBox(height: 25,),
                            registerButton,
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
                                            fontSize: 16,
                                            fontFamily: 'Montserrat')),
                                  ),


                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //),
            ),
          )
        ],
      ),
    );
  }
}


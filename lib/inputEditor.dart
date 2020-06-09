import 'package:flutter/material.dart';
import 'package:project2/profile.dart';
import 'package:project2/register.dart';
import './main.dart';
import './signForm.dart';
import 'package:flutter/animation.dart';

class authenticate extends StatefulWidget {
  authenticate({Key key, this.onAuthenticated});
  final ValueChanged<bool> onAuthenticated;
  @override
  _authenticateState createState() =>
      _authenticateState(onAuthenticated: onAuthenticated);
}

class _authenticateState extends State<authenticate> with SingleTickerProviderStateMixin {
  Animation animation, childAnimation;
  AnimationController animationController;
  _authenticateState({Key key, this.onAuthenticated});
  bool _remember = false;
  TextEditingController _user;
  TextEditingController _pass;
  final ValueChanged<bool> onAuthenticated;

  bool _colors1 = false;
  bool _colors2 = false;
  void _onPrressed1() {
    if (_user.text != 'user' || _pass.text != '1234')
      onAuthenticated(false);
    else
      onAuthenticated(true);
    setState(() {
      _colors1 = true;
    });
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return profile();
    }));
  }

  void _onPrressed2() {
    //Navigator.pushNamed(context, '/Forms');
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Register();
    }));
    setState(() {
      _colors2 = true;
    });
  }

  @override
  void initState() {
    _pass = TextEditingController();
    _user = TextEditingController();
    ////////////////animation//////////////////
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -0.25, end: 0.0).animate(CurvedAnimation(
      //very slow
        parent: animationController,
        curve: Curves.fastOutSlowIn));
    childAnimation =Tween(begin: 20.0,end: 125.0).animate(
        CurvedAnimation(
            parent: animationController,
            curve: Curves.fastOutSlowIn
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    return  AnimatedBuilder(
    animation: animationController,
    builder: (BuildContext context, Widget child) {
      return Transform(
                  transform: Matrix4.translationValues(
                      animation.value * MediaQuery.of(context).size.width, 0.0, 0.0),
                  child: Center(
                    child: AnimatedBuilder(
                      animation: childAnimation,
                      builder: (BuildContext context,Widget child){
                        return Container(
                            //padding: EdgeInsets.all(15),
                            height: childAnimation.value*3,
                            width: childAnimation.value*3,
                            child: ListView(
                                  children: <Widget>[
                                    ListTile(
                                      title: TextFormField(
                                        controller: _user,
                                        decoration: InputDecoration(
                                            labelText: 'Username',
                                            labelStyle: TextStyle(color: Colors.black,fontSize: 12)),
                                      ),
                                    ),
                                    ListTile(
                                      title: TextFormField(
                                        controller: _pass,
                                        decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle: TextStyle(color: Colors.black,fontSize: 12)),
                                        obscureText: true,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Remember me',
                                            style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                              color: Colors.black,
                                            )),
                                        Checkbox(
                                          value: _remember,
                                          onChanged: (bool value) {
                                            setState(() {
                                              _remember = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12,),
                                    Container(
                                      height: 40.0,
                                      padding: EdgeInsets.only(left: 20,right: 20),
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
                                          onTap: _onPrressed1,
                                          child: Center(
                                            child: Text('LOGIN',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat')),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Container(
                                        height: 40.0,
                                        padding: EdgeInsets.only(left: 20,right: 20),
                                        child: Material(
                                          borderRadius: BorderRadius.circular(20.0),
                                          shadowColor: Colors.purpleAccent,
                                          color: Colors.purple,
                                          elevation: 7.0,
                                          child: InkWell(
                                              onTap: _onPrressed2 ,
                                              child: Center(
                                                child: Text('SIGNUP',style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Montserrat'),
                                                ),
                                              )
                                          )
                                          /*child: GestureDetector(
                  onTap: _onPrressed2,
                  child: Center(
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                )*/,
                                        )),
                                    /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(onPressed: _onPrressed2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
                    child: Text('Sign up',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:  Colors.white70,),),
                    //color: _colors2 ? Colors.purple : null,
                    color: Colors.purple,
                  ),
                  RaisedButton(onPressed: _onPrressed1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
                    child: Text('Login',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:  Colors.white70,),),
                    //color: _colors1 ? Colors.purple : null,
                    color: Colors.purple,
                  ),
                ],),*/
                              ],
                            ),
                          );
                      },
                    ),
                  ),
                );
    });
  }
}

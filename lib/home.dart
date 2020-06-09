import 'package:flutter/material.dart';
import './main.dart';
import './inputEditor.dart';
import './about.dart';
import './contact.dart';

class Home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> with SingleTickerProviderStateMixin {
  ////////////////////////// nav bar //////////////////////////
  int _curIdx = 0;
  final List<Widget> _children = [
    Home(),
    About(),
    Contact()
  ];
  void onTappedBar(int i) {
    setState(() {
      _curIdx = i;

    });
  }
  ////////////////////////// log in //////////////////////////
  bool _isAuthen;
  void _onAuthen(bool val) {
    setState(() {
      _isAuthen = val;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _isAuthen = false;
  }

  @override
  Widget build(BuildContext context) {
    bool _remember = false;
    return MaterialApp(

      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Container(
                constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.width,),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child:  Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Icon(
                          Icons.account_balance,
                          color: Colors.black,
                          size: 42,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'UNIV',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 90,),
                    authenticate(
                      onAuthenticated: _onAuthen,
                    ),

                    //SizedBox(height: MediaQuery.of(context).size.height,),
                    /*Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width-54,
                                ),
                                child: Text(
                                  "If you don't have an acount , please sign up",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.visible,
                                  softWrap: true,
                                ),
                              ),
                              SizedBox(width: 4,),
                              IconButton(
                                icon: Icon(Icons.person_add),
                              )
                            ],
                          ),*/
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}

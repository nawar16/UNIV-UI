/*
import 'package:project/list_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: MyHomePage(title: 'Flutter Demo Home Page'),
);
}
}

class MyHomePage extends StatefulWidget {
MyHomePage({Key key, this.title}) : super(key: key);

final String title;

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List _bottomItems = [
{"icon": FontAwesomeIcons.fire, "index": 0},
{"icon": FontAwesomeIcons.bitcoin, "index": 1},
{"icon": FontAwesomeIcons.apple, "index": 2},
{"icon": FontAwesomeIcons.hackerNews, "index": 3},
];

String _apiKey = '331e91aa149a4182851563e9f4d2c892';

int _currentTab = 0;
String _apiUrl = '';
int _total = 0;
List _articles = [];
bool _loading = true;

@override
void initState() {
super.initState();

changeTab(index: 0);
}

void changeTab({int index = 0}) {
//tab1 is about top-headlines
//tab2 is about bitcoins
//tab3 = apple
//tab4 = techcrunch

switch (index) {
case 0: _apiUrl = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=' + _apiKey; break;
case 1: _apiUrl = 'https://newsapi.org/v2/everything?q=bitcoin&sortBy=publishedAt&apiKey=' + _apiKey; break;
case 2: _apiUrl = 'https://newsapi.org/v2/everything?q=apple&sortBy=popularity&apiKey=' + _apiKey; break;
case 3: _apiUrl = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=' + _apiKey; break;
}

print(_apiUrl);

setState(() {
_loading = true;
_total = 0;
_articles = [];
});

http.get(_apiUrl).then((response) {
var data = json.decode(response.body);
setState(() {
_total = data['totalResults'];
_articles = data['articles'];
_loading = false;
});
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
bottomNavigationBar: _buildBottomNavigation(context),
body: new SafeArea(child: _buildBody(context)),
);
}

_buildBottomNavigation(BuildContext context) {
var _items = <BottomNavigationBarItem>[];

for (var item in _bottomItems) {
_items.add(new BottomNavigationBarItem(
icon: new Icon(
item['icon'],
color: Colors.black,
),
title: new Text(''),
));
}

return new BottomAppBar(
color: Colors.white,
child: new Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: _bottomItems.map((x) {
return new IconButton(
icon: new Icon(x['icon'],
color: _currentTab == x['index'] ? Colors.black : Colors.black38,
),
onPressed: () {
setState(() {
_currentTab = x['index'];
});
changeTab(index: x['index']);
},
);
}).toList(),
),
);
}

_buildBody(BuildContext context) {
if (_loading) {
return new SpinKitCircle(
color: Colors.black,
size: 50.0,
);
}

print(_articles);

return new ListView.builder(
itemBuilder: (context, index) {
return new Padding(
padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//child: new ListItem(data: _articles[index]),
);
},
itemCount: _total,
);
}
}


*/
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project2/signForm.dart';
import './about.dart';
import './contact.dart';
import './inputEditor.dart';
import './home.dart';
import './register.dart';

void main() {
  return runApp(Home1());
}

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  ////////////////////////// nav bar //////////////////////////
  void changeTab({int index = 0}) {
    switch (index) {
      case 0: _curIdx=0;
      break;
      case 1: _curIdx=1;
      break;
      case 2: _curIdx=2;
      break;
    }
  }
  //////////////////////////////////////////////////////////////////
  int _currentTab = 0;
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
////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    List _bottomItems = [
      {"icon": FontAwesomeIcons.home, "index": 0},
      {"icon": Icons.announcement, "index": 1},
      {"icon": FontAwesomeIcons.phone, "index": 2},
      {"icon": FontAwesomeIcons.search, "index": 3},
    ];

    _buildBottomNavigation(BuildContext context) {
      var _items = <BottomNavigationBarItem>[];

      for (var item in _bottomItems) {
        _items.add(new BottomNavigationBarItem(
          icon: new Icon(
            item['icon'],
            color: Colors.black,
          ),
          title: new Text(''),
        ));
      }

      return new BottomAppBar(
        color: Colors.white,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _bottomItems.map((x) {
            return new IconButton(
              icon: new Icon(x['icon'],
                color: _currentTab == x['index'] ? Colors.black : Colors.black38,
              ),
              onPressed: () {
                setState(() {
                  _currentTab = x['index'];
                });
                changeTab(index: x['index']);
              },
            );
          }).toList(),
        ),
      );
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.purple

      ),
      routes: <String, WidgetBuilder>{
        //here we make some routes
        '/Home': (BuildContext context) => new Home(),
        '/Contact': (BuildContext context) => new Contact(),
        '/About': (BuildContext context) => new About(),
        '/Forms': (BuildContext context) => new SignForm(),
      },
      home: Scaffold(
        //appBar: AppBar(),
        body: _children[_curIdx],
        bottomNavigationBar: _buildBottomNavigation(context),

      ),
    );
  }
}

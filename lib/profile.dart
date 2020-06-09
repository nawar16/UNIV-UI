import 'package:flutter/material.dart';


class profile extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<profile> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('json parsing app'),
        backgroundColor: Color(0xff8c00ff),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: () => debugPrint("search"),),
          IconButton(icon: Icon(Icons.add),onPressed: () => debugPrint("add"),)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("codewith YDC"),
              accountEmail: Text("ydc@gmail.com"),
              decoration: BoxDecoration(
                  color: Color(0xff8c00ff)
              ),
            ),
            ListTile(
              title: Text("First page"),
              leading: Icon(Icons.search,color: Colors.purple[900],),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Second page"),
              leading: Icon(Icons.add,color: Colors.purple[900],),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Third page"),
              leading: Icon(Icons.home,color: Colors.purple[900],),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Fourth page"),
              leading: Icon(Icons.list,color: Colors.purple[900],),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            Divider(height: 5.0,),
            ListTile(
              title: Text("Close"),
              leading: Icon(Icons.close,color: Colors.red,),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}

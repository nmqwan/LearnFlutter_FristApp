import 'package:flutter/material.dart';
import 'view/page_profile/main_profile.dart';
import 'view/page_news/main_news.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'QWAN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,
      ),
      body: TabBarView(
        children: <Widget>[
         new MainNews(),new MainProfile()
        ],
        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).accentColor,
        child: new TabBar(
          indicatorWeight: 0.1,
          controller: tabController,
          tabs: <Widget>[
            createMainTab(Icons.fiber_new,"News"),
            createMainTab(Icons.person,"Profile")
          ],
        ),
      ),
    );
  }
  Widget createMainTab(IconData icon,String text){
    return Padding(
      padding: const EdgeInsets.only(top:4.0),
      child: new Tab(
          child:  Center(
            child: Column(
              children: <Widget>[
                new Icon(icon),
                Text(text)
              ],
            ),
          )
      ),
    );
  }
}


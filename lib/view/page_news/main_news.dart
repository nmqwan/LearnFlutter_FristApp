import 'package:flutter/material.dart';

class MainNews extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsState();
  }
}

class NewsState extends State<MainNews> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:   Colors.white,
          elevation: 5.0,
          title: TabBar(
            isScrollable: true,
            indicatorWeight: 0.1,

            labelColor: Colors.blue,
            unselectedLabelColor:Colors.grey ,
            tabs: [
              Text(
                "Breaking news",
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Bussiness",
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Technology",
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "World",
                style: TextStyle(fontSize: 20.0),
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}

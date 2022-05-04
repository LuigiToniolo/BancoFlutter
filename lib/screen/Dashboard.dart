import 'package:flutter/material.dart';
import 'package:nubank_project/NavPages/notifications_page.dart';
import 'package:nubank_project/TabBarPages/home_view.dart';

import '../NavBar.dart';
import '../TabBarPages/feed_view.dart';
import '../TabBarPages/profile_view.dart';
import '../TabBarPages/settings_view.dart';

class Dashboard extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
            title: Text('Piscinas bank'),
            // centerTitle: true,
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            actions: [
              IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()),
                );
              },
      ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
        ],
          // backgroundColor: Theme.of(context).primaryColor,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Feed'),
              Tab(icon: Icon(Icons.face), text: 'Profile'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
          elevation: 0,
          titleSpacing: 0,
      ),
        body: TabBarView(
          children: [
            HomePageView(),
            FeedPageView(),
            ProfilePageView(),
            SettingsPageView(),
          ],
        ),
  ),
  );

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
  Widget HomePage(context) => Center(
  );
}

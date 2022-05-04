import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank_project/NavPages/favorites_page.dart';
import 'package:nubank_project/NavPages/user_page.dart';
import 'package:nubank_project/NavPages/workFlow_page.dart';

import 'NavPages/notifications_page.dart';
import 'NavPages/people_page.dart';
import 'NavPages/plugins_page.dart';
import 'NavPages/updates_page.dart';

class NavigationDrawerWidget extends StatelessWidget {

  final padding = EdgeInsets.symmetric(horizontal: 2);
  @override
  Widget build(BuildContext context) {
    final name = 'Luigi Toniolo';
    final email = 'luigibtoniolo@gmail.com';
    final perfil = 'images/foto-perfil.jpeg';

    return Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.purple,
                      Colors.deepPurple,
                    ]
                )
            ),
            child: InkWell(
              splashColor: Colors.red.withOpacity(0.3),
              onTap: () {print('fui clicado');},
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    children: <Widget>[
                      buildHeader(
                        perfil: perfil,
                        name: name,
                        email: email,
                        onClicked: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(
                          name: name,
                          perfil: perfil,
                        ),
                        )),
                      ),
                      const SizedBox(height: 16),
                      buildSearchField(),
                      const SizedBox(height: 24,),
                      buildMenuItem(
                        icon: Icons.people,
                        text: 'People',
                        onClicked: () => SelectedItem(context, 0),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        icon: Icons.favorite_border,
                        text: 'Favorites',
                        onClicked: () => SelectedItem(context, 1),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        icon: Icons.workspaces_outline,
                        text: 'Workflow',
                        onClicked: () => SelectedItem(context, 2),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        icon: Icons.update,
                        text: 'Updates',
                        onClicked: () => SelectedItem(context, 3),
                      ),
                      const SizedBox(height: 24),
                      //Da um espaço de 24px pra cima da linha..

                      Divider(color: Colors.white70,),
                      //É a linha de divisão.

                      const SizedBox(height: 24),
                      //Da um espaço de 24px pra baixo da linha.

                      const SizedBox(height: 16),
                      buildMenuItem(
                        icon: Icons.account_tree_outlined,
                        text: 'Plugins',
                        onClicked: () => SelectedItem(context, 4),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        icon: Icons.notifications_outlined,
                        text: 'Notifications',
                        onClicked: () => SelectedItem(context, 5),
                      ),
                      const SizedBox(height: 32),
                      buildMenuItem(
                        icon: Icons.logout,
                        text: '${name}, Sair?',
                        onClicked: () => SelectedItem(context, 5),
                      ),
                    ]

                ),
              ),
            ),

          ),
        ),
      )

    );
  }
  
  Widget buildHeader({
    required String perfil,
    required String name,
    required String email,
    required VoidCallback onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
              CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(perfil)
        ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        name,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white)
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.add_comment_outlined, color: Colors.white),
                )
          ],
        ),
      ),
);
  
  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
        ),
      );
  }

  void SelectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
      Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PeoplePage(),
      ));
      break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavoritesPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkFlowPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UpdatePage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PluginsPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotificationsPage(),
        ));
        break;
      }
    }
  }







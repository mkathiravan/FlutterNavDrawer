

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navmenu/navigation_drawer_widget.dart';

class NotificationsPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Notifications'),
      centerTitle: true,
      backgroundColor: Colors.indigo,
    ),

  );
}
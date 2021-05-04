

import 'package:flutter/material.dart';
import 'package:flutter_navmenu/navigation_drawer_widget.dart';

class UpdatesPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) => Scaffold(

    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Updates'),
      centerTitle: true,
      backgroundColor: Colors.pink,
    ),

  );

}
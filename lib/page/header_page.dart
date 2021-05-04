

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navmenu/data/user.dart';
import 'package:flutter_navmenu/navigation_drawer_widget.dart';

class HeaderPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) => Scaffold(

    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text(name),
      centerTitle: true,
    ),
    body: Image.network(urlImage, width: double.infinity, height: double.infinity,fit: BoxFit.cover,),
  );

}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_navmenu/provider/navigation_provider.dart';
import 'package:flutter_navmenu/model/navigation_item.dart';
import 'package:flutter_navmenu/page/notifications_page.dart';
import 'package:flutter_navmenu/page/favourites_page.dart';
import 'package:flutter_navmenu/page/people_page.dart';
import 'package:flutter_navmenu/page/header_page.dart';
import 'package:flutter_navmenu/page/plugins_page.dart';
import 'package:flutter_navmenu/page/updates_page.dart';
import 'package:flutter_navmenu/page/workflow_page.dart';





import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.header:
        return HeaderPage();
      case NavigationItem.people:
        return PeoplePage();
      case NavigationItem.favourites:
        return FavouritesPage();
      case NavigationItem.workflow:
        return WorkflowPage();
      case NavigationItem.updates:
        return UpdatesPage();
      case NavigationItem.plugins:
        return PluginsPage();
      case NavigationItem.notifications:
        return NotificationsPage();
    }
  }
}
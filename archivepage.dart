import 'package:flutter/material.dart';
import 'routewhereyougo.dart';
import 'recipes/GarlicPage.dart';
import 'recipes/LongsilogPage.dart';
import 'recipes/TapsilogPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArchivePage extends StatefulWidget {
  @override
  _ArchivePageState createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  late List<String> favorites;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      favorites = prefs.getStringList('favorites') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Archive',
          style: TextStyle(
            color: Colors.black.withOpacity(.7),
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black.withOpacity(.7),
          ),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
      body: favorites.isEmpty
          ? Center(
        child: Text(
          'No favorite items found',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          String title = favorites[index];
          return GestureDetector(
            onTap: () {
              _navigateToRecipePage(title);
            },
            child: ListTile(
              title: Text(title),
              subtitle: Text('Tap to view recipe'), // Example of additional information
              leading: Icon(Icons.favorite),
              // Add more customization as needed
            ),
          );
        },
      ),
    );
  }

  void _navigateToRecipePage(String title) {
    Widget route;
    switch (title) {
      case 'Garlic Fried Rice':
        route = GarlicPage();
        break;
      case 'Tapsilog':
        route = TapsilogPage();
        break;
      case 'Longsilog':
        route = LongsilogPage();
        break;
    // Add cases for other recipes as needed
      default:
        route = RouteWhereYouGo(); // Default route
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
  }
}


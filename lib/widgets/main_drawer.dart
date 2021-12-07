import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(20.0),
              height: 120,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              color: Theme.of(context).accentColor,
              child: Row(
                children: [
                  const Icon(
                    Icons.restaurant_menu_rounded,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Deli Meal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          buildListTile("Meal", Icons.restaurant),
          const Divider(),
          buildListTile("Filters", Icons.settings),
        ],
      ),
    );
  }
}

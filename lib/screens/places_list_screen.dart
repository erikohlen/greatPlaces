import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/great_places.dart';
import '../screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Places'), actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
          },
        )
      ]),
      body: Consumer<GreatPlaces>(
        builder: (ctx, greatPlaces, ch) => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

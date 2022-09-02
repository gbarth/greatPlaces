import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:provider/provider.dart';

import '../utils/app_routes.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: const Center(
          child: Text('No registered location'),
        ),
        builder: (context, greatPlaces, child) => greatPlaces.itemsCount == 0
            ? child!
            : Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 4,
                ),
                child: ListView.builder(
                  itemCount: greatPlaces.itemsCount,
                  itemBuilder: (context, i) => ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            FileImage(greatPlaces.itemByIndex(i).image)),
                    title: Text(greatPlaces.itemByIndex(i).title),
                    onTap: () {},
                  ),
                ),
              ),
      ),
    );
  }
}

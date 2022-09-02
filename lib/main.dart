import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:great_places/screens/place_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Places',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.black,
            secondary: Color.fromARGB(255, 8, 130, 10),
            brightness: Brightness.light,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(color: Colors.black),
            headline2: TextStyle(color: Colors.white),
          )),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: (context) => const PlaceFormScreen(),
      },
    );
  }
}

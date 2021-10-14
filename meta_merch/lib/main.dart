import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './widgets/influencer-list.dart';
import './providers/collection_provider.dart';
import './screens/collections_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CollectionProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'MetaMerch',
            ),
          ),
          body: CollectionsScreen(),
        ),
        routes: {
          CollectionsScreen.routeName: (ctx) => CollectionsScreen(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta_merch/screens/store_screen.dart';
import 'package:provider/provider.dart';

import '../providers/collection_provider.dart';
import '../models/collection.dart';
import 'cart_screen.dart';

class CollectionsScreen extends StatelessWidget {
  static const routeName = '/collections-screen';

  @override
  Widget build(BuildContext context) {
    final collection = Provider.of<CollectionProvider>(context, listen: false);

    return ListView.builder(
      itemCount: Provider.of<CollectionProvider>(context).collections.length,
      itemBuilder: (ctx, i) => Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(StoreScreen.routeName);
            },
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 20,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 7,
                margin: EdgeInsets.all(10),
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken),
                  child: Image.asset(
                    collection.collections[i].imageUrl,
                    // 'assets/images/ludwig-promo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            child: Text(
              collection.collections[i].influencer,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './collections_screen.dart';
import '../providers/collection_Provider.dart';

class StoreScreen extends StatelessWidget {
  static const routeName = '/store-screen';

  @override
  Widget build(BuildContext context) {
    final collections =
        Provider.of<CollectionProvider>(context, listen: false).collections;
    return Scaffold(
      appBar: AppBar(
        title: Text('Collection'),
      ),
      body: ListView.builder(
        itemCount: collections.length,
        itemBuilder: (ctx, i) => ClipRRect(
          borderRadius: (BorderRadius.circular(10)),
          child: GridTile(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                  CollectionsScreen.routeName), //Change the route on this
              child: Hero(
                tag: collections[i].id,
                child: FadeInImage(
                  placeholder:
                      AssetImage('asset/images/product-placeholder.png'),
                  image: (NetworkImage(
                      'assets/images/collections/pokimane-promo.png')),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

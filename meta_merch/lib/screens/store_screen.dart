import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './collections_screen.dart';
import '../providers/collection_provider.dart';

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: GridTile(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(
                        CollectionsScreen.routeName), //Change the route on this
                    child: Hero(
                      tag: collections[i].id,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: FadeInImage(
                          placeholder: AssetImage(
                              'assets/images/product-placeholder.png'),
                          image: (NetworkImage(
                              'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg')),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                      color: Colors.grey[100],
                      child: Text(
                        'Adam\'s arc 02 mousepad\n\n \$54.99',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

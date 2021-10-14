import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/collection.dart';
//import '../models/influencer.dart';

class CollectionProvider with ChangeNotifier {
  List<Collection> _collections = [
    Collection(
      '1',
      'Superwoman',
      'loltyler1',
      'assets/images/tyler1-promo.png',
    ),
    Collection(
      '2',
      'Meat Head',
      'Pokimane',
      'assets/images/pokimane-promo.png',
    ),
    Collection(
      '3',
      'Mogul Moves',
      'Ludwig',
      'assets/images/ludwig-promo.png',
    ),
  ];

  List<Collection> get collections {
    return [..._collections];
  }
}

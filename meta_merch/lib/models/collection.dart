import 'package:flutter/material.dart';

class Collection {
  final String id;
  final String title;
  final String influencer;
  final String imageUrl;

  Collection(
    @required this.id,
    @required this.title,
    @required this.influencer,
    @required this.imageUrl,
  );
}

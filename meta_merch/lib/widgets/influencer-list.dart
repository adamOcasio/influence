import 'package:flutter/material.dart';

class InfluencerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Influencers'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, i) => Container(),
      ),
    );
  }
}

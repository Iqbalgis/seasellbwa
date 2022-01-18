import 'package:flutter/material.dart';
import 'package:reels_seasellbwa/models/popular.dart';

class PopularCrad extends StatelessWidget {
  final Popular popular;

  const PopularCrad({required this.popular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(popular.picturePath), fit: BoxFit.cover),
      ),
    );
  }
}

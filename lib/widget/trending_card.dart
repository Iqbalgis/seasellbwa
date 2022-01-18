import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reels_seasellbwa/models/trending.dart';
import 'package:reels_seasellbwa/theme.dart';
import 'package:supercharged/supercharged.dart';

class TrendingCard extends StatelessWidget {
  final Trending trending;

  const TrendingCard({
    required this.trending,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: 290,
            height: 370,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(19),
              image: DecorationImage(
                  image: NetworkImage(trending.picturePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 18,
            left: 18,
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                color: '5A1FE4'.toColor(),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Center(
                  child: Text(
                'Trending',
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
              )),
            ),
          ),
          Positioned(
            bottom: 18,
            left: 18,
            child: Container(
              width: 176,
              height: 40,
              decoration: BoxDecoration(
                color: 'D5F566'.toColor(),
                borderRadius: BorderRadius.circular(45),
              ),
              child: Center(
                  child: Text(
                'Bid Now',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: '414B1A'.toColor(),
                ),
              )),
            ),
          ),
          Positioned(
            bottom: 18,
            right: 18,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: 'FFFFFF'.toColor(),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/love.png'),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

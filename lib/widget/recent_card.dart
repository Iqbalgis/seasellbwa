import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reels_seasellbwa/models/recent.dart';
import 'package:supercharged/supercharged.dart';

class RecentCard extends StatelessWidget {
  final Recent recent;
  final double itemWidth;

  const RecentCard({required this.recent, required this.itemWidth, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(recent.picturePath),
              fit: BoxFit.cover,
            )),
      ),
      SizedBox(
        width: itemWidth - 145,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recent.name,
              style: GoogleFonts.poppins(
                color: '17161B'.toColor(),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
            Text(
              recent.date,
              style: GoogleFonts.poppins(
                color: '6b6c7c'.toColor(),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      Image(
        image: AssetImage('assets/bitcoin.png'),
      ),
      Container(margin: EdgeInsets.symmetric(horizontal: 5)),
      Text(
        recent.price.toString(),
        style: GoogleFonts.poppins(
          color: '17161B'.toColor(),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ]);
  }
}

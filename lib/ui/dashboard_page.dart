import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reels_seasellbwa/models/popular.dart';
import 'package:reels_seasellbwa/models/recent.dart';
import 'package:reels_seasellbwa/models/trending.dart';
import 'package:reels_seasellbwa/theme.dart';
import 'package:reels_seasellbwa/widget/popular_card.dart';
import 'package:reels_seasellbwa/widget/recent_card.dart';
import 'package:reels_seasellbwa/widget/trending_card.dart';

import 'package:supercharged/supercharged.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              margin: EdgeInsets.only(top: 18),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SeaSell',
                        style: GoogleFonts.poppins(
                          color: '17161b'.toColor(),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Find Your NFT`s Today',
                        style: GoogleFonts.poppins(
                          color: '6b6c7c'.toColor(),
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage('assets/chart.png')),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                      ),
                      Image(image: AssetImage('assets/notif.png')),
                    ],
                  )
                ],
              ),
            ),

            /// TRENDINGCARD
            Container(
              margin: EdgeInsets.only(top: 18),
              child: CarouselSlider(
                  items: mockTrendings
                      .map((e) => TrendingCard(trending: e))
                      .toList(),
                  options: CarouselOptions(
                    height: 350,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.73,
                  )),
            ),

            /// POPULARCREATOR
            Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Creators',
                  style: GoogleFonts.poppins(
                    color: '17161b'.toColor(),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              width: double.infinity,
              height: 55,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: mockPopulars
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                            left: (e == mockPopulars.first) ? 24 : 0,
                            right: 12,
                          ),
                          child: PopularCrad(popular: e),
                        ))
                    .toList(),
              ),
            ),

            /// RECENT BID
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 16),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Recent Bid',
                  style: GoogleFonts.poppins(
                    color: '17161b'.toColor(),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Column(
              children: mockRecent
                  .map((e) => Padding(
                        padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
                        child: RecentCard(recent: e, itemWidth: listItemWidth),
                      ))
                  .toList(),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/destination_card.dart';
import '../widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Howdy,\nKezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    
    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.6,
              ),
              DestinationCard(
                name: 'White House',
                city: 'Spain',
                imageUrl: 'assets/image_destination2.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'Pangalengan',
                city: 'Bandung',
                imageUrl: 'assets/image_destination3.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Tokyo',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rating: 4.9,
              ),
              DestinationCard(
                name: 'Ciwidey',
                city: 'Bandung',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New This Year',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              DestinationTile(
                name: 'Danau Baratan', 
                city: 'Singaraja', 
                imageUrl: 'assets/image_destination6.png',
                rating: 4.5,
              ),
              DestinationTile(
                name: 'Sydney Opera', 
                city: 'Asutralia', 
                imageUrl: 'assets/image_destination7.png',
                rating: 4.7,
              ),
              DestinationTile(
                name: 'Roma', 
                city: 'Italia', 
                imageUrl: 'assets/image_destination8.png',
                rating: 4.9,
              ),
              DestinationTile(
                name: 'Payung Teduh', 
                city: 'Singapora', 
                imageUrl: 'assets/image_destination9.png',
                rating: 4.4,
              ),
              DestinationTile(
                name: 'Hill Hey', 
                city: 'Monaco', 
                imageUrl: 'assets/image_destination10.png',
                rating: 4.9,
              ),
            ],
          ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestinations(),
      ],
    );
  }
}
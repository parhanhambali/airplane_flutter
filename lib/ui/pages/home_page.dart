import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/destination_card.dart';

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
                rating: 5,
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
                rating: 5,
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
      ],
    );
  }
}
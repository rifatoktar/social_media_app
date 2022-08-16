import 'package:flutter/material.dart';

class ProfilePortfolio extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  const ProfilePortfolio({
    Key? key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Row(children: <Widget>[
        Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(image1), fit: BoxFit.fill)),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0.0),
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(image2), fit: BoxFit.fill)),
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0.0),
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(image3), fit: BoxFit.fill)),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(image4), fit: BoxFit.fill)),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

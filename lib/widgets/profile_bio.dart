import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  final String text;
  final String link1;
  final String link2;
  final String link3;

  const ProfileBio({
    Key? key,
    required this.text,
    required this.link1,
    required this.link2,
    required this.link3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "Inria",
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              child: Text(
                link1,
                style: const TextStyle(
                    color: Color(0xff387ADF),
                    fontFamily: "Inria",
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              child: Text(
                link2,
                style: const TextStyle(
                    color: Color(0xff387ADF),
                    fontFamily: "Inria",
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              child: Text(
                link3,
                style: const TextStyle(
                    color: Color(0xff387ADF),
                    fontFamily: "Inria",
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ]),
    );
  }
}

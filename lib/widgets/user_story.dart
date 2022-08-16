import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  final String imageLink;
  final String name;
  final Color storyColor;

  const UserStory({
    Key? key,
    required this.imageLink,
    required this.name,
    required this.storyColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0.0),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                color: const Color(0xff50C4ED).withOpacity(0.5),
                image: DecorationImage(
                    image: NetworkImage(imageLink), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: storyColor, width: 2)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: "Inria",
                fontSize: 12,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}

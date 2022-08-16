import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String userProfileImage;
  final String followers;
  final String following;
  final String posts;

  const UserProfile({
    Key? key,
    required this.userProfileImage,
    required this.followers,
    required this.following,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 15),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(userProfileImage), fit: BoxFit.fill)),
        ),
        const Spacer(),
        Container(
            margin: const EdgeInsets.only(top: 25),
            width: 120,
            height: 180,
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, elevation: 0.0),
                  onPressed: () {},
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "followers",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Inria",
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          followers,
                          style: const TextStyle(
                              color: Color(0xff387ADF),
                              fontFamily: "Inria",
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, elevation: 0.0),
                  onPressed: () {},
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "following",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Inria",
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          following,
                          style: const TextStyle(
                              color: Color(0xff387ADF),
                              fontFamily: "Inria",
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, elevation: 0.0),
                  onPressed: () {},
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "posts",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Inria",
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          posts,
                          style: const TextStyle(
                              color: Color(0xff387ADF),
                              fontFamily: "Inria",
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ]),
                ),
              ],
            ))
      ]),
    );
  }
}

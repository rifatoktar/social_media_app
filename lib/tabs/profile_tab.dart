import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_media/widgets/profile_bio.dart';
import 'package:social_media/widgets/profile_portfolio.dart';
import 'package:social_media/widgets/user_profile.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  final String userName = "John Doe";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: <Widget>[
            Text(
              userName,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "Inria",
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Iconsax.verify,
              size: 25,
              color: Color(0xff387ADF),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.sort,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const UserProfile(
            userProfileImage:
                'https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=399&q=80',
            followers: '15k',
            following: '240',
            posts: '152',
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileBio(
              text: "gorgeous mountain view shots from different of world",
              link1: "instagram.com/john.doe",
              link2: "reddit.com/john.doe",
              link3: "pinterest.com/john.doe"),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: <Widget>[
                const Text(
                  "Portfolio",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Inria",
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_1,
                      color: Color(0xff387ADF),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfilePortfolio(
              image1:
                  "https://images.unsplash.com/photo-1521358522799-ad7a75d9e346?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              image2:
                  "https://images.unsplash.com/photo-1519904981063-b0cf448d479e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              image3:
                  "https://images.unsplash.com/photo-1596181756811-4072d13b2f93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              image4:
                  "https://images.unsplash.com/photo-1570264878711-8500505a92db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
        ],
      )),
    ));
  }
}

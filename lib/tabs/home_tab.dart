import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_media/widgets/feed.dart';
import 'package:social_media/widgets/home_appbar.dart';
import 'package:social_media/widgets/user_story.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const HomeAppbar(
          userName: 'John Doe',
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.send_2,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 125,
            width: MediaQuery.of(context).size.width,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, elevation: 0.0),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xff50C4ED).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color(0xff387ADF), width: 2)),
                      child: const Icon(
                        Iconsax.add,
                        color: Color(0xff387ADF),
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your Story",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: "Inria",
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              const UserStory(
                  storyColor: Color(0xffBB1626),
                  imageLink:
                      "https://images.unsplash.com/photo-1536152470836-b943b246224c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=438&q=80",
                  name: "Mike Trenm"),
              const UserStory(
                  storyColor: Color(0xffBB1626),
                  imageLink:
                      "https://images.unsplash.com/photo-1598267410503-d0ef01973f69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
                  name: "Bella Green"),
              const UserStory(
                  storyColor: Color(0xffBB1626),
                  imageLink:
                      "https://images.unsplash.com/photo-1504163782861-f53c245f6086?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=496&q=80",
                  name: "James Doe"),
              const UserStory(
                  storyColor: Colors.transparent,
                  imageLink:
                      "https://images.unsplash.com/photo-1628082878598-ed6b930efb74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
                  name: "Mia Bole"),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 465,
            margin: const EdgeInsets.symmetric(horizontal: 1),
            child: ListView(children: const <Widget>[
              Feed(
                imageLink:
                    "https://images.unsplash.com/photo-1536152470836-b943b246224c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=438&q=80",
                userProfileImage:
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                userName: 'Bella Green',
                status: 'online',
                imageDescription: 'Nice view in mountain',
                like: '14k',
                comment: '2k',
              ),
              SizedBox(
                height: 20,
              ),
              Feed(
                  imageLink:
                      "https://images.unsplash.com/photo-1598267410503-d0ef01973f69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
                  userProfileImage:
                      "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                  userName: "Mike Trenm",
                  status: "online",
                  imageDescription: "What a view",
                  like: "4k",
                  comment: "200")
            ]),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Feed extends StatelessWidget {
  final String imageLink;
  final String userProfileImage;
  final String userName;
  final String status;
  final String imageDescription;
  final String like;
  final String comment;

  const Feed({
    Key? key,
    required this.imageLink,
    required this.userProfileImage,
    required this.userName,
    required this.status,
    required this.imageDescription,
    required this.like,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 15),
      child: Row(
        children: <Widget>[
          Container(
            height: 300,
            width: 310,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageLink), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 260,
              margin: const EdgeInsets.symmetric(vertical: 15),
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 50,
                      width: 200,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(userProfileImage),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              userName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inria",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Iconsax.verify,
                              size: 15,
                              color: Colors.white,
                            ),
                            const Text(
                              " • ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              status,
                              style: const TextStyle(
                                  color: Color(0xffB0DB72),
                                  fontFamily: "Inria",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                          ]),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        imageDescription,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Inria",
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ]),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 270,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff387ADF).withOpacity(0.8)),
            child: Column(
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 15,
                    )),
                const Spacer(),
                SizedBox(
                  height: 200,
                  width: 50,
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Column(children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent, elevation: 0.0),
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                const Icon(
                                  Iconsax.arrow_up_3,
                                  size: 15,
                                  color: Color(0xffCF0A10),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  like,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inria",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            )),
                      ]),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Column(children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent, elevation: 0.0),
                            onPressed: () {},
                            child: Column(
                              children: <Widget>[
                                const Icon(
                                  Iconsax.messages_2,
                                  size: 15,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  comment,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Inria",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            )),
                      ]),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.share,
                          color: Colors.white,
                          size: 15,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.archive_1,
                          color: Colors.white,
                          size: 15,
                        )),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

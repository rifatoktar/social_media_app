import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppbar extends StatelessWidget {
  final String userName;

  const HomeAppbar({Key? key, 
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      height: 20,
      child: Row(
        children: <Widget>[
          const Text(
            "Home",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Inria",
                fontSize: 25,
                fontWeight: FontWeight.w300),
          ),
          Text(
            "   •   ",
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20),
          ),
          Text(
            userName,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontFamily: "Inria",
                fontSize: 25,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Iconsax.verify,
            size: 20,
            color: Color(0xff387ADF),
          ),
        ],
      ),
    );
  }
}

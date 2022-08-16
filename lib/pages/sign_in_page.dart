import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_media/home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();

  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return;
      } // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
              height: 400,
              margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Inria",
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 95,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Inria",
                                fontSize: 25,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: const Color(0xff50C4ED).withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: const Color(0xff387ADF))),
                            child: TextField(
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Inria",
                                  fontSize: 20),
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior
                                    .never, //Hides label on focus or if filled
                                filled: true, // Needed for adding a fill color
                                fillColor:
                                    const Color(0xff50C4ED).withOpacity(0),
                                isDense: true, // Reduces height a bit
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // No border
                                  borderRadius: BorderRadius.circular(
                                      12), // Apply corner radius
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 110,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              const Text(
                                "Password",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Inria",
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300),
                              ),
                              const Spacer(),
                              TextButton(
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Color(0xff387ADF),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Inria",
                                      fontSize: 12),
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: const Color(0xff50C4ED).withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: const Color(0xff387ADF))),
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _obscured,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Inria",
                                  fontSize: 20),
                              focusNode: textFieldFocusNode,
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior
                                    .never, //Hides label on focus or if filled
                                filled: true, // Needed for adding a fill color
                                fillColor:
                                    const Color(0xff50C4ED).withOpacity(0),
                                isDense: true, // Reduces height a bit
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // No border
                                  borderRadius: BorderRadius.circular(
                                      12), // Apply corner radius
                                ),
                                suffixIcon: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Icon(
                                      _obscured
                                          ? Iconsax.eye
                                          : Iconsax.eye_slash,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff387ADF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, elevation: 0.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Inria",
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: const <Widget>[
              Expanded(child: Divider(thickness: 2, color: Colors.black)),
              Text(
                "    or    ",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Inria",
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              Expanded(child: Divider(thickness: 2, color: Colors.black)),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 80,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color(0xff387ADF),
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, elevation: 0.0),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/google.svg",
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color(0xff387ADF),
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, elevation: 0.0),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color(0xff387ADF),
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, elevation: 0.0),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/apple.svg",
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 30,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                const Text(
                  "By sign in, you are accepting our",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inria",
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  child: const Text(
                    "Terms",
                    style: TextStyle(
                        color: Color(0xff387ADF),
                        fontFamily: "Inria",
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "and",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inria",
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Privacy  Policies",
                    style: TextStyle(
                        color: Color(0xff387ADF),
                        fontFamily: "Inria",
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                const Text(
                  "You do not have an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Inria",
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up!",
                    style: TextStyle(
                        color: Color(0xff387ADF),
                        fontFamily: "Inria",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    ));
  }
}

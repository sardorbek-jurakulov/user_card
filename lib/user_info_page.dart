import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_info_app/main.dart';

class UserInfoPage extends StatefulWidget {
  UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  Color mainColor = const Color(0xFFFCF6F5); // FCF6F5FF
  Color secondaryColor = const Color(0xFF2BAE66); // 2BAE66FF

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: secondaryColor,
          title: Text(
            "Executor Info",
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: mainColor,
          child: ListView(
            // backgroundColor: mainColor,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60, bottom: 20),
                child: CircleAvatar(
                  backgroundColor: secondaryColor,
                  radius: 90,
                  child: CircleAvatar(
                    backgroundColor: secondaryColor,
                    radius: 88,
                    backgroundImage: const AssetImage(
                        "assets/images/avatar_of_jurakulov_s.png"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 50, top: 10, right: 50, bottom: 60),
                child: Column(
                  children: [
                    userInfoBuilder(Icons.person, "Sardorbek Jurakulov"),
                    userInfoBuilder(
                        FontAwesomeIcons.laptopCode, "Software Engineer"),
                    userInfoBuilder(
                        FontAwesomeIcons.at, "sardorbek.juraqulov@gmail.com"),
                    userInfoBuilder(Icons.phone, "+998-94-611-04-64"),
                    userInfoBuilder(
                        Icons.location_city_rounded, "Uzbekistan, Tashkent"),
                    userInfoBuilder(FontAwesomeIcons.github,
                        "github.com/sardorbek-jurakulov"),
                    userInfoBuilder(FontAwesomeIcons.bitbucket,
                        "bitbucket.org/sardorbek-jurakulov/"),
                    userInfoBuilder(FontAwesomeIcons.gitlab,
                        "gitlab.com/sardorbek-jurakulov"),
                    userInfoBuilder(FontAwesomeIcons.linkedin,
                        "www.linkedin.com/in/sardorengineer"),
                    userInfoBuilder(Icons.telegram, "@turoniy"),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: secondaryColor,
          onPressed: () {
            setState(() {
              if (mainColor == Color(0xFFFCF6F5)) {
                mainColor = const Color(0xFF2BAE66);
                secondaryColor = const Color(0xFFFCF6F5);
              } else {
                mainColor = const Color(0xFFFCF6F5);
                secondaryColor = const Color(0xFF2BAE66);
              }
            });
          },
          child: Icon(
            FontAwesomeIcons.sun,
            color: mainColor,
          ),
        ),
      ),
    );
  }

  Widget userInfoBuilder(IconData iconName, String dataTitle) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: secondaryColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(5),
            color: secondaryColor,
            child: Icon(
              iconName,
              color: mainColor,
            ),
          ),
          Expanded(
            child: Container(
              color: mainColor,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                dataTitle,
                style: TextStyle(color: secondaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

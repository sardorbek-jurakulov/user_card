import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Executor Info"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60, bottom: 20),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 90,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 88,
                  backgroundImage:
                      AssetImage("assets/images/avatar_of_jurakulov_s.png"),
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
    );
  }

  Widget userInfoBuilder(IconData iconName, String dataTitle) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(5),
            color: Colors.grey[400],
            child: Icon(iconName),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(dataTitle),
            ),
          ),
        ],
      ),
    );
  }
}

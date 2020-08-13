import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/projects.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final route = "home";
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " Hire Me.",
                style: GoogleFonts.aclonica(
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/maku.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              " Mazakpe",
              style: GoogleFonts.aclonica(
                textStyle: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Android Developer",
              style: GoogleFonts.sourceSansPro(
                textStyle: TextStyle(
                  fontSize: 26.0,
                  color: Colors.red.shade100,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 30.0,
              child: Divider(
                color: Colors.teal.shade400,
              ),
            ),
            Text(
              "Java / Kotlin, Flutter Newbie.",
              style: GoogleFonts.sourceSansPro(
                textStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red.shade100,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 20.0,
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: InkWell(
                  onTap: () => {
                    navigateToDicePage(context),
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.work,
                        color: Colors.red.shade900,
                      ),
                      title: Text(
                        "Projects",
                        style: GoogleFonts.sourceSansPro(
                          textStyle: TextStyle(
                            fontSize: 30.0,
                            color: Colors.red.shade900,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: Colors.red.shade900,
                      ),
                    ),
                  ),
                )),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red.shade900,
                  ),
                  title: Text(
                    "makpalyy@gmail.com",
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red.shade900,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Contact me:",
              style: GoogleFonts.sourceSansPro(
                textStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red.shade100,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 20.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () => openBrowserTab(),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.red.shade900,
                        size: 30.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.red.shade900,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.red.shade900,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: FaIcon(
                      FontAwesomeIcons.medium,
                      color: Colors.red.shade900,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: FaIcon(
                      FontAwesomeIcons.link,
                      color: Colors.red.shade900,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToDicePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Projects(),
      ),
    );
  }

  openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(
        url: "https://flutter.io/", androidToolbarColor: Colors.deepPurple);
  }
}

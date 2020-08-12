import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/magic_eight.dart';
import 'package:practice_app/story/storyller.dart';
import 'package:practice_app/xylophone.dart';
import 'dice.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
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
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/dice.png'),
                    ),
                    title: Text(
                      "Dice",
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: InkWell(
                onTap: () => {
                  navigateToEightBallPage(context),
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/magic8.png'),
                    ),
                    title: Text(
                      "Magic 8 Ball",
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: InkWell(
                onTap: () => {
                  navigateToXylophonePage(context),
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/xylophone.png'),
                    ),
                    title: Text(
                      "Xylophone",
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.pink.shade900,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: InkWell(
                onTap: () => {
                  navigateToQuizzlerPage(context),
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/quizzler.png'),
                    ),
                    title: Text(
                      "Quizzler",
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.pink.shade900,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: InkWell(
                onTap: () => {
                  navigateToQuizzlerPage(context),
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/destini.png'),
                    ),
                    title: Text(
                      " Destini",
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.pink.shade900,
                    ),
                  ),
                ),
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
        builder: (context) => Dice(),
      ),
    );
  }

  navigateToEightBallPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MagicEight(),
      ),
    );
  }

  navigateToXylophonePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Xylophone(),
      ),
    );
  }

  navigateToQuizzlerPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryPage(),
      ),
    );
  }
}

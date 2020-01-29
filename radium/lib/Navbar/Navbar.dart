import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                "assets/images/RadiumLogo.png",
                width: 100,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Color.fromRGBO(178, 223, 219, 1.0)),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Color.fromRGBO(178, 223, 219, 1.0)),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
                  style: TextStyle(color: Color.fromRGBO(178, 223, 219, 1.0)),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color:Color.fromRGBO(178, 223, 219, 1.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Color.fromRGBO(17, 19, 31, 1.0)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            "RetroPortal Studio",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Your life,\nyour elements",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Color.fromRGBO(178, 223, 219, 1.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'You surely know the saying “We are what we eat.”, but do you also know that the renowned Greek philosopher Aristotle thought: “We are what we repeatedly do.”?'
                ' He concludes: “Excellence, then, is not an act but a habit.” 1'
                ' In the same way as all matter can be broken down to a number of different chemical elements, our success in career and personal life consists also of certain elements.'
                ' These elements are our daily activities, habits, tasks and goals that we master.'
                ' With Radium you take control of these elements!'
                ' You define who you want to be by setting up your elemental activities, that characterize from now on your days on the journey to excellence.'
                ' Radium offers you several features to stay focused and motivated on this track.'
                ' You can challenge not only yourself but also your friends and fellow self-improvers with challenging competitions.',
                style: TextStyle(
                    fontSize: 16.0, color: Color.fromRGBO(178, 223, 219, 1.0)),
              ),
            ),
            MaterialButton(
              color: Color.fromRGBO(178, 223, 219, 1.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Our Packages",
                  style: TextStyle(color: Color.fromRGBO(17, 19, 31, 1.0)),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/lp_image.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main/main_screen.dart';
import 'components/highlights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        // HomeBanner(),
        // HighLightsInfo(),
        // MyProjects(),
        // Recommendations(),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 100,
          width: 100,
          child: Image(
            image: AssetImage("assets/images/work.png"),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            'Currently under work\nSorry for any inconvenience',
            style: TextStyle(
              color: Color(0xFFD9D6D6),
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

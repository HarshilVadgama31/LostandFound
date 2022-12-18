import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/options.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(100, 300, 0, 0),
        color: Colors.purple,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "&",
                  style: TextStyle(fontSize: 100),
                ),
                Text(
                  "Lost\nFound",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(150, 270, 0, 0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Options()));
                },
                icon: Icon(Icons.keyboard_arrow_right),
                iconSize: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}

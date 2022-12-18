import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: 120,
              width: double.maxFinite,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_left),
                      iconSize: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Text(
                      "+ Options",
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

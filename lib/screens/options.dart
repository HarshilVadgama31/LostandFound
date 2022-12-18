import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/upload.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text("Number of choice"),
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple.shade100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 60, child: Icon(Icons.person_outline)),
                  Text("Get Police Assistance"),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple),
                    height: double.maxFinite,
                    width: 60,
                    // color: Colors.purpleAccent,
                    child: Icon(Icons.call),
                  )
                ],
              ),
            ),
            Text(
                "Will call the local authorities according to your\n location."),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple.shade100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 60, child: Icon(Icons.person_outline)),
                  Text("Upload the information"),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple),
                      height: double.maxFinite,
                      width: 60,
                      // color: Colors.purpleAccent,
                      child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(00, 0, 00, 0),
              child: Text(
                  "Will allow you to upload the information of the\n person and it will automactically choose the\n current location. You can also describe the\n person with current details."),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LostPage extends StatefulWidget {
  const LostPage({Key? key}) : super(key: key);

  @override
  State<LostPage> createState() => _LostPageState();
}

class _LostPageState extends State<LostPage> with TickerProviderStateMixin {
  List<String> items = ['Lost', 'Found'];
  TabController? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
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
                      ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              // margin: EdgeInsets.only(left: 50),
              width: double.maxFinite,
              height: 50,
              // color: Colors.red,
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Container(width: 50, height: 50, child: Text("Lost")),
                  Container(width: 50, height: 50, child: Text("Found"))
                ],
                unselectedLabelColor: const Color(0xffacb3bf),
                indicatorColor: Color(0xFFffac81),
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                indicatorPadding: EdgeInsets.all(10),
                isScrollable: false,
                // controller: _tabController,
              ),
            ),
            Container(
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      child: Text("data")),
                  Container(
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      child: Text("data"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

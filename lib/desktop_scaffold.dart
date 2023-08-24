import 'package:flutter/material.dart';
import 'package:reponsive_dashboard_flutter/utils/drawer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Desktop" , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),  // to change hamburger icon color
      ),
      body: Row(
        children: [
          MyDrawer(),
          Expanded(
              flex: 2 ,
              child: Column(
                children: [
                  AspectRatio(  // its needed to not cover gridView with listView
                    aspectRatio: 4,
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                        itemBuilder: (context, item) {
                          return Container(
                            margin:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          );
                        }),
                  ),

                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, item) {
                          return Container(
                            width: double.infinity,
                            height: 70,
                            margin:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(15)),
                          );
                        }),
                  )
                ],
              ),),

          Expanded(
              flex: 1 ,
              child: Container(color: Colors.blue,))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:reponsive_dashboard_flutter/utils/drawer.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: const Text("Mobile" , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
            color: Colors.white), // to change hamburger icon color
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          AspectRatio(  // its needed to not cover gridView with listView
            aspectRatio: 1,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
      ),
    );
  }
}

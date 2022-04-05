
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/body.dart';
import 'package:untitled4/hometopbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade200,
      appBar: HomeTopBar(BuildContext),
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(left: 20,right: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 0.1),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 24,
                child: IconButton(
                    icon: Icon(Icons.home),
                    onPressed: (){},
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 24,
                child: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){},
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 24,
                child: IconButton(
                  icon: Icon(Icons.favorite_border_sharp),
                  onPressed: (){},
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 24,
                child: IconButton(
                  icon: Icon(Icons.doorbell),
                  onPressed: (){},
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 24,
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      ),
      // Container(
      //   height: 75,
      //   width: double.infinity,
      //   color: Colors.white,
      //   child: BottomNavigationBar(
      //     fixedColor: Colors.white,
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           backgroundColor: Colors.grey,
      //           label: "Home"
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.menu),
      //           backgroundColor: Colors.grey,
      //           label: "Menu"
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.favorite_border_sharp),
      //           backgroundColor: Colors.grey,
      //           label: "Like"
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.doorbell),
      //           backgroundColor: Colors.grey,
      //           label: "Notification"
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.person),
      //           backgroundColor: Colors.grey,
      //           label: "Contact"
      //       ),
      //     ],
      //   ),
      //   ),
      body: HomeBody(),
    );
  }
}



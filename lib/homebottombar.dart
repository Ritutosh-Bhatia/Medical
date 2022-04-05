import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade300,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.grey,
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  backgroundColor: Colors.grey,
                  label: "Menu"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_sharp),
                  backgroundColor: Colors.grey,
                  label: "Like"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.doorbell),
                  backgroundColor: Colors.grey,
                  label: "Notification"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.grey,
                  label: "Contact"
              ),
            ],
          ),

        ),
      ),
    );
  }
}

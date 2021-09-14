import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  Widget createActionsButton({
    String title = "'title'",
    IconData icon = Icons.star,
    bool isFws = false,
    bool isX = false,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: isX ? Colors.red : Colors.grey.shade500,
          radius: 25,
          child: !isFws
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "asset/MALUZINHAAA.jpeg",
              fit: BoxFit.cover,
            ),
          ),

          // place of my camera
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
            ),
          ),

          Positioned(
            top: 555,
            left: 40,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
            ),
          ),
          //Parte dos botoes do facetime
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade600,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createActionsButton(
                    title: "effects",
                    icon: FontAwesomeIcons.starOfDavid,
                  ),
                  createActionsButton(
                    title: "mute",
                    icon: FontAwesomeIcons.microphoneSlash,
                    isFws: true,
                  ),
                  createActionsButton(
                    title: "flip",
                    icon: FontAwesomeIcons.camera,
                  ),
                  createActionsButton(
                    title: "end",
                    icon: FontAwesomeIcons.apple,
                    isX: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

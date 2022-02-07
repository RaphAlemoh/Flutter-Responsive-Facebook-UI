import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key key, this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          scrollDirection: Axis.horizontal,
          itemCount: onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomBotton(),
              );
            }
            return Container(
              margin: const EdgeInsets.all(2.0),
              height: 20.0,
              width: 20.0,
              color: Colors.red,
            );
          }),
    );
  }
}

class _CreateRoomBotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Create Room'),
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: BorderSide(width: 3.0, color: Colors.blueAccent[100]),
          primary: Colors.white,
          backgroundColor: Palette.facebookBlue),
      child: Row(children: [
        ShaderMask(
          shaderCallback: (rect) =>
              Palette.createRoomGradient.createShader(rect),
          child: Icon(
            Icons.video_call,
            size: 35.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 4.0),
        Text('Create Room')
      ]),
    );
  }
}

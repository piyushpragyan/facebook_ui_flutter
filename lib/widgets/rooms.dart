import 'package:facebook_ui/modals/user-modal.dart';
import 'package:facebook_ui/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/modals/modals.dart';
import 'package:facebook_ui/config/palette.dart';
class Rooms extends StatelessWidget {
  final List <User> onlineUsers;

  const Rooms({
    Key Key,
    @required this.onlineUsers,
  }) : super(key: Key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context,int index){

          if(index == 0)
            {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }

          final User user = onlineUsers[index  - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                  isActive: true,
              ),
            );
        },
      ),
    );
  }
}


class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Create Room'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(
        width: 3.0,
        color: Colors.blueAccent[100],
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) => Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4.0
          ),
          Text('Create\nRoom'),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flash_chat/screens/chat_screen.dart';

class FriendButton extends StatelessWidget {
  final String text;
  FriendButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ChatScreen.id);
      },
      child: Material(
        elevation: 3.0,
        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                style: BorderStyle.solid,
                color: Colors.grey,
                width: 2.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(7.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  backgroundColor: Colors.lightBlueAccent,
                  radius: 35.0,
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

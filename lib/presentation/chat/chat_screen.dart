import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/564x/c1/d2/9f/c1d29f36d6891c0231e0195f1ce74163.jpg")),
        ),
        title: const Text('Mi Amor'),
        centerTitle: false,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: "Ya regresaste del Trabajo?", fromWho: FromWho.me)
  ];
  Future<void> sendMessage() async {
    //TODO implementar método
  }
}

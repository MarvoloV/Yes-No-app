import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: 'Holis mi tubi mor', fromWho: FromWho.me),
    Message(text: "Ya regresaste del Trabajo?", fromWho: FromWho.me)
  ];
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    modeScrollToBotton();
    notifyListeners();
  }

  void modeScrollToBotton() {
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}

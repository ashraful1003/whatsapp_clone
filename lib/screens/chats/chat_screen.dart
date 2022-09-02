import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';
import 'package:whatsapp_clone/screens/chats/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        ///in ChatModel, we have declared some data.
        itemCount: chatModelLists.length,
        itemBuilder: (_, index) {
          ///custom chatcard to show the list
          return ChatCard(
            chatModel: chatModelLists[index],
          );
        });
  }
}

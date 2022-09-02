import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';
import 'package:whatsapp_clone/widgets/constants.dart';

class ChatCard extends StatelessWidget {
  ChatCard({Key? key, required this.chatModel}) : super(key: key);

  ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      radius: 25,
                      child: chatModel.avatar!.isNotEmpty
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: NetworkImage(chatModel.avatar!),
                                      fit: BoxFit.cover)),
                            )
                          : chatModel.isGroup!
                              ? const Icon(
                                  Icons.group,
                                  size: 40,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Colors.white,
                                ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatModel.name!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Visibility(
                            visible: chatModel.sender != 'me' ? true : false,
                            child: Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: Text(
                                "${chatModel.sender!}:",
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: chatModel.icon == null ? false : true,
                            child: Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: Icon(
                                chatModel.icon,
                                color: chatModel.isReceived != null &&
                                        chatModel.isReceived!
                                    ? Colors.blue
                                    : Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                          Text(
                            chatModel.message!.length > 32
                                ? '${chatModel.message!.substring(0, 33)}...'
                                : chatModel.message!,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: chatModel.message == 'typing...'
                                    ? floating
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    chatModel.time!,
                    style: TextStyle(
                        color: chatModel.unread!.compareTo('0') == 0
                            ? Colors.grey
                            : floating),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Visibility(
                    visible:
                        chatModel.unread!.compareTo('0') == 0 ? false : true,
                    child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: floating,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          chatModel.unread!,
                          style: const TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
            width: MediaQuery.of(context).size.width - 110,
            child: const Divider(
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}

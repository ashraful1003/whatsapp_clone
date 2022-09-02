import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera/camera_screen.dart';
import 'package:whatsapp_clone/screens/chats/chat_screen.dart';
import 'package:whatsapp_clone/screens/status/status_screen.dart';

import '../widgets/constants.dart';
import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  int chatCounter = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              CustomAppBar(
                chatCounter: chatCounter,
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: floating,
          child: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

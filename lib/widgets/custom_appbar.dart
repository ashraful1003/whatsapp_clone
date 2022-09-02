import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/constants.dart';

import 'custom_tab.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key,
    required this.chatCounter,
  }) : super(key: key);

  int chatCounter;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      /// if false whole appbar will hide from the screen
      pinned: true,

      /// if false upper appbar won't hide
      floating: true,
      expandedHeight: 110,
      backgroundColor: primary,
      title: const Text(
        'WhatsApp',
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        PopupMenuButton(onSelected: (value) {
          /// which item has been selected, can be determined by 'value'
        }, itemBuilder: (context) {
          return const [
            PopupMenuItem(
              child: Text('New group'),
              value: 'group',
            ),
            PopupMenuItem(
              child: Text('New broadcast'),
              value: 'broadcast',
            ),
            PopupMenuItem(
              child: Text('Linked devices'),
              value: 'devices',
            ),
            PopupMenuItem(
              child: Text('Starred messages'),
              value: 'starred',
            ),
            PopupMenuItem(
              child: Text('Settings'),
              value: 'settings',
            ),
          ];
        }),
      ],
      /// TabBar for bottom appbar.
      ///
      /// Three out of four items of the TabBar have the more width then the
      /// fourth one.
      bottom: TabBar(
        isScrollable: true,
        indicatorColor: Colors.white,
        labelPadding: const EdgeInsets.symmetric(horizontal: 0.0),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3,
        tabs: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 10,
            child: const Icon(Icons.camera_alt_rounded),
          ),

          CustomTab(
            name: 'chats',
            counter: 1,
          ),
          CustomTab(
            name: 'status',
            counter: 0,
          ),
          CustomTab(
            name: 'calls',
            counter: 0,
          ),
        ],
      ),
    );
  }
}

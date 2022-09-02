import 'package:flutter/material.dart';

class ChatModel {
  String? avatar, name, message, sender, unread, time;
  IconData? icon;
  bool? isReceived, isGroup, isDelivered;

  ChatModel({
    required this.avatar,
    required this.name,
    required this.message,
    required this.sender,
    required this.time,
    required this.unread,
    required this.isGroup,
    this.icon,
    this.isReceived,
    this.isDelivered,
  });
}

///Now we need some demo data. Though it will come from server later
List<ChatModel> chatModelLists = [
  ChatModel(
      avatar:
          'https://images.unsplash.com/photo-1569680087741-99ef25ea656a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      name: 'Weekend',
      message: 'Sticker',
      icon: Icons.sticky_note_2,
      sender: 'Sofia',
      time: '9:49',
      isGroup: true,
      unread: '2'),
  ChatModel(
      avatar:
          'https://images.unsplash.com/photo-1520180183766-4a016dbaf8cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      name: 'Joao Pereira',
      message: 'typing...',
      sender: 'me',
      time: '9:45',
      isGroup: false,
      unread: '0'),
  ChatModel(
      avatar:
          'https://images.unsplash.com/photo-1529197506057-659cd99094c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      name: 'Isabelle van Rijn',
      message: 'Best breakfast ever',
      icon: Icons.videocam_sharp,
      sender: 'me',
      isReceived: false,
      time: '9:40',
      isGroup: false,
      unread: '0'),
  ChatModel(
      avatar:
          'https://images.unsplash.com/photo-1624351088510-0b6c2eb9cd12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      name: 'Family',
      message: 'She is so cute',
      sender: 'Mom',
      time: '9:09',
      isGroup: true,
      unread: '0'),
  ChatModel(
      avatar:
          'https://images.unsplash.com/photo-1583762066168-9cf076740aed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      name: 'Alicia Garcia',
      message:
          'It was so great to see you! Let\'s meet again near day if you are free',
      sender: 'me',
      icon: Icons.done_all,
      isReceived: true,
      isDelivered: true,
      time: '9:00',
      isGroup: true,
      unread: '0'),
  ChatModel(
      avatar: '',
      name: 'Lunch club',
      message: 'GIF',
      icon: Icons.gif_box_rounded,
      sender: 'Dominic Schwarz',
      time: '8:33',
      isGroup: true,
      unread: '0'),
  ChatModel(
      avatar:
          'https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=853&q=80',
      name: 'Sandra\'s Cakes',
      message: 'It will be ready on Thursday!',
      sender: 'me',
      time: 'Yesterday',
      isGroup: false,
      unread: '0'),
  ChatModel(
      avatar: '',
      name: 'Isabelle Rijn',
      message: 'Best Launch ever',
      icon: Icons.photo,
      sender: 'me',
      isReceived: false,
      time: 'Yesterday',
      isGroup: false,
      unread: '0'),
];

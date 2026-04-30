import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musaab_adam/data/models/message/message_model.dart';

import '../components/message_tile.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  RxList<MessageModel> messages = <MessageModel>[
    MessageModel(message: "Hello !", isMe: false),
    MessageModel(message: "How Much?", isMe: true),
    MessageModel(message: "This product is original £25", isMe: false),
  ].obs;

  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black,),
        title: Text(
          'Lucy',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Expanded(
              child: Obx((){
                return ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index){

                    final MessageModel message = messages[index];

                    return MessageTile(
                      message: message.message,
                      isMe: message.isMe,
                      imageUrl: message.imageUrl,
                    );
                  },
                );
              }),
            ),
            // Bottom Input Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF0089B6), width: 1.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child:  TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          hintText: 'Your message........',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: const Color(0xFF0089B6),
                    child: Transform.rotate(
                      angle: -pi/4,
                      child: IconButton(
                        icon: const Icon(Icons.send, color: Colors.white, size: 20),
                        onPressed: () {
                          if (messageController.text.isNotEmpty) {
                            messages.add(MessageModel(message: messageController.text, isMe: true));
                            messageController.clear();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 20.h,)
          ],
        ),
      ),
    );
  }
}
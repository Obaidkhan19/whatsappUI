import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/my_message_card.dart';
import 'package:whatsapp/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      // messages array in info.dart
      itemCount: messages.length,
        itemBuilder: (context,index){
        if(messages[index]['isMe'] == true){
          // MY MESSAGE => CARD
          return MyMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString()
          );
        }
        // SENDER MESSAGE => CARD
        return SenderMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString()
        );
        },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/chat_list.dart';
import 'package:whatsapp/widgets/contacts_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString(),),
        centerTitle: false,

        // LEADING  ==ADD ICONS TO LEFT OF TEXT
        // ACTIONS == ADD ICONS TO RIGHT OF TEXT
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,)),
        ],
      ),
      body: Column(
       children: [

         // CHAT LIST
         Expanded(
             child: ChatList(),
         ),

         // TEXT INPUT FIELD OF WEB
         // Container(
         //   height: MediaQuery.of(context).size.height*0.08,
         //   padding: EdgeInsets.all(10),
         //   decoration: BoxDecoration(
         //     border: Border(
         //       bottom: BorderSide(
         //         color: dividerColor,
         //       ),
         //     ),
         //     color: chatBarMessage,
         //   ),
         //   child: Row(
         //     children: [
         //       Expanded(
         //         child: Padding(padding:const EdgeInsets.only(
         //           left: 10,
         //           right: 15,
         //         ),
         //           child: TextField(
         //             decoration: InputDecoration(
         //               fillColor: searchBarColor,
         //               filled: true,
         //               hintText: 'Type a message',
         //               border: OutlineInputBorder(
         //                 borderRadius: BorderRadius.circular(20),
         //                 borderSide: const BorderSide(
         //                   width: 0,
         //                   style: BorderStyle.none,
         //                 ),
         //               ),
         //               contentPadding: const EdgeInsets.only(left: 20),
         //             ),
         //           ),
         //         ),
         //       ),
         //       Padding(
         //         padding: const EdgeInsets.only(top:0),
         //         child: Row(
         //           children: [
         //             IconButton(onPressed: (){},
         //               icon: Icon(Icons.camera_alt,
         //                 color: Colors.grey,
         //               ),
         //             ),
         //             IconButton(onPressed: (){},
         //               icon: Icon(Icons.attach_file,
         //                 color: Colors.grey,
         //               ),
         //             ),
         //             IconButton(onPressed: (){},
         //               icon: Icon(Icons.money,
         //                 color: Colors.grey,
         //               ),
         //             ),
         //           ],
         //         ),
         //       )
         //
         //     ],
         //   ),
         // ),


         // TEXT INPUT FIELD OF MOBILE
         TextField(
           // TEXT INPUT FIELD OF MOBILE
           decoration: InputDecoration(
             filled: true,
             fillColor: mobileChatBoxColor,
             hintText: 'Type a message',
             prefixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Icon(Icons.camera_alt, color: Colors.grey,),
                   Icon(Icons.attach_file, color: Colors.grey,),
                   Icon(Icons.money, color: Colors.grey,),
                 ],
               ),
             ),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
               borderSide: BorderSide(
                 width: 0,
                 style: BorderStyle.none,
               ),
             ),
             contentPadding: EdgeInsets.all(10),
           ),
         ),

       ],
      ),
    );
  }
}

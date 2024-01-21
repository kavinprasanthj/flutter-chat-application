
import 'package:abcdflutter/audio_call/audio.dart';
import 'package:abcdflutter/video_call/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/chat.dart';
import '../models/chat_users.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "John Wick", secondaryText: "Awesome Setup", image: "assets/images.jpg", time: "Now"),
    ChatUsers(text: "Jeff Bezoz", secondaryText: "That's Great", image: "assets/jeff.jpg", time: "Yesterday"),
    ChatUsers(text: "Mark Henry", secondaryText: "Hey where are you?", image: "assets/markhendry.jpg", time: "31 Mar"),
    ChatUsers(text: "Jonh Cena", secondaryText: "Busy! Call me in 20 mins", image: "assets/johncena.jpg", time: "28 Mar"),
    ChatUsers(text: "Rock", secondaryText: "Thankyou, It's awesome", image: "assets/rock.jpg", time: "23 Mar"),
    ChatUsers(text: "Ratan Tata", secondaryText: "will update you in evening", image: "assets/tata.jpg", time: "17 Mar"),
    ChatUsers(text: "Stanley", secondaryText: "Can you please share the file?", image: "assets/marvel.jpg", time: "24 Feb"),
    ChatUsers(text: "Jack ma", secondaryText: "How are you?", image: "assets/jackma.jpg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),

                      child: Row(
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.video_call),color: Colors.pink,iconSize: 20,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => videocall()));
                            },),


                          SizedBox(width: 15,),


                          IconButton(icon: Icon(Icons.call),color: Colors.pink,iconSize: 20,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => audiocall()));
                            },),
                        ],
                      ),



                    )
                  ],
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
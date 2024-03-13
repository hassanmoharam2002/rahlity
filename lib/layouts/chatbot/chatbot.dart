

import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
class ChatBot extends StatefulWidget {

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  ChatUser myself=ChatUser(id: '1',firstName:'hassan' );

  ChatUser bot=ChatUser(id: '2',firstName:'yourhelper' );

  List<ChatMessage> allMessages=[];

  List<ChatUser> typing=[];

  final oururl="https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyAY5PZZnjqC2RxdjYB8GL-GZjy_Qv7j6OA";
  final header={
    'Content-Type': 'application/json'
  };
  getData(ChatMessage m)async{

    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {

    });
    var data={"contents":[{"parts":[{"text":m.text}]}]};

    await http.post(Uri.parse(oururl),headers: header,body: jsonEncode(data)).
    then((value){
      if(value.statusCode==200){

        var result=jsonDecode(value.body);
        print(result["candidates"][0]["content"]["parts"][0]["text"]);
        ChatMessage m1=ChatMessage(
          user: bot,
          createdAt: DateTime.now(),
          text:result["candidates"][0]["content"]["parts"][0]["text"],
        );
        allMessages.insert(0,m1);
        setState(() {

        });
      }else{
        print('error occure');
      }
    }).
    catchError((e){
      typing.remove(bot);
      setState(() {

      });

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yourhelper'),
        centerTitle:true ,
      ),
      backgroundColor: Colors.white,
      body: DashChat(
          messageOptions: MessageOptions(
              showTime: true,
              textColor: Colors.blue,
              containerColor: Colors.white
          ),
          currentUser: myself,
          onSend: (ChatMessage m) {

            getData(m);
          },
          messages: allMessages),
    );
  }
}
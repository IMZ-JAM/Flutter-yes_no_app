import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarView(),
      body: _ChatView(),
    );
  }
}

class _AppBarView extends AppBar {
  _AppBarView()
      : super(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://socialcounts.org/_next/image?url=https%3A%2F%2Fwww.banner.yt%2FUCxKYkY9dQEphPyanndv0YlA%2Favatar%3Fwidth%3D640&w=256&q=75'),
            ),
          ),
          title: const Text('Gojo Satoru ❤️'),
        );
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ( index % 2 == 0) 
                  ? const HerMessageBubble()
                  :const MyMessageBubble();
                })),
            // Caja de texto     
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}

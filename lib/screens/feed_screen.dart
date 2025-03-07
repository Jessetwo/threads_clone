import 'package:flutter/material.dart';
import 'package:threads_clone/models/thread_message.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/thread_logo.png',
                width: 30,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: threadMessages.length,
                itemBuilder: (context, index) {
                  return ThreadMessageWidget(
                    message: threadMessages[index],
                  );
                })
          ],
        ),
      ),
    )));
  }
}

class ThreadMessageWidget extends StatelessWidget {
  const ThreadMessageWidget({
    super.key,
    required this.message,
  });

  final ThreadMessage message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.dicebear.com/api/avataaars/${message.senderName}.png'),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      message.senderName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(_getTimeDifference(message.timeStamp)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(message.message),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_comment_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/retweet.png',
                              width: 25,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/send.png',
                              width: 25,
                            ))
                      ],
                    )
                  ],
                )
              ],
            ))
          ],
        ),
        Divider()
      ],
    );
  }

  String _getTimeDifference(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 1) {
      return 'Just Now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes} min';
    } else if (difference.inDays < 1) {
      return '${difference.inHours} hr';
    } else {
      return '${difference.inDays} Days';
    }
  }
}

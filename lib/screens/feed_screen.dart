import 'package:flutter/material.dart';

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
            Image.asset(
              'assets/thread_logo.png',
              width: 30,
            ),
            ThreadMessage(),
            ThreadMessage(),
            ThreadMessage(),
            ThreadMessage(),
            ThreadMessage(),
            ThreadMessage(),
            ThreadMessage(),
          ],
        ),
      ),
    )));
  }
}

class ThreadMessage extends StatelessWidget {
  const ThreadMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/profile.png',
              width: 45,
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
                      'John Doe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text('5 mins'),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi everyone, how are you all?'),
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
}

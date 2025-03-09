import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('Cancel',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold))),
                Text(
                  'New Thread',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('Post',
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

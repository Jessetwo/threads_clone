import 'package:flutter/material.dart';
import 'package:sliding_up_panel/src/panel.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key, required this.panelController});

  final PanelController panelController;

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
                    onPressed: () {
                      widget.panelController.close();
                    },
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
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage('assets/profile.png'),
                  radius: 25,
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Jesse Kanadi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Start a Thread',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none),
                      maxLines: null,
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}

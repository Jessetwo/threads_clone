import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/src/panel.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key, required this.panelController});

  final PanelController panelController;

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final messageController = TextEditingController();
  final currentUser = FirebaseAuth.instance.currentUser;
  String userName = '';
  Future<void> PostThreadMessage() async {
    try {
      if (messageController.text.isNotEmpty) {
        await FirebaseFirestore.instance.collection('threads_message').add({
          'id': currentUser!.uid,
          'sender': userName,
          'message': messageController.text,
          'timestamp': FieldValue.serverTimestamp()
        });
        messageController.clear();
        widget.panelController.close();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> getCurrentUsername() async {
    try {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser!.uid)
          .get();

      if (mounted) {
        setState(() {
          userName = userDoc['name'];
        });
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    {
      getCurrentUsername();
      super.initState();
    }
    ;
  }

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
                    onPressed: PostThreadMessage,
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
                      userName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: messageController,
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

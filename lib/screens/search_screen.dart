import 'package:flutter/material.dart';
import 'package:threads_clone/models/suggested_follower.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12)),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ...suggestedFollower.map((follower) {
              return SuggestedFollowerWidget(follower: follower);
            })
          ],
        ),
      ),
    )));
  }
}

class SuggestedFollowerWidget extends StatelessWidget {
  const SuggestedFollowerWidget({super.key, required this.follower});

  final SuggestedFollower follower;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars.dicebear.com/api/avataaars/${follower.username}.png'),
            backgroundColor: Colors.white,
          ),
          title: Text(follower.username),
          subtitle: Text(follower.username.toLowerCase()),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                width: 110,
                height: 85,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: follower.isFollowing
                    ? Text(
                        'Following',
                        style: TextStyle(color: Colors.grey),
                      )
                    : Text('Follow'),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}

import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
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
            SuggestedFollowerWidget()
          ],
        ),
      ),
    )));
  }
}

class SuggestedFollowerWidget extends StatelessWidget {
  const SuggestedFollowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(),
          title: Text('John Doe'),
          subtitle: Text('@john_doe'),
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
                child: Text("Follow"),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}

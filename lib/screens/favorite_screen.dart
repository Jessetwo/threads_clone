import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Activity',
            style: TextStyle(color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: SizedBox(
              height: 44,
              child: TabBar(labelColor: Colors.white, tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Follows',
                ),
                Tab(
                  text: 'Replies',
                )
              ]),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Text('Favorite Screen'),
        ),
      ),
    );
  }
}

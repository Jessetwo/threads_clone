import 'package:flutter/material.dart';
import 'package:threads_clone/models/suggested_follower.dart';
import 'package:threads_clone/screens/search_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int _currentIndextab = 0;
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
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 44,
                child: TabBar(
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    onTap: (index) => setState(() {
                          _currentIndextab = index;
                        }),
                    tabs: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: _currentIndextab == 0
                                  ? Colors.transparent
                                  : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Tab(
                          text: 'All',
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: _currentIndextab == 1
                                  ? Colors.transparent
                                  : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Tab(
                          text: 'Follows',
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: _currentIndextab == 2
                                  ? Colors.transparent
                                  : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Tab(
                          text: 'Replies',
                        ),
                      ),
                    ]),
              ),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBarView(children: [
              Column(
                children: [
                  ...suggestedFollower.map((follower) {
                    return SuggestedFollowerWidget(follower: follower);
                  })
                ],
              ),
              Center(child: Text('Nothing to see here yet')),
              Center(child: Text('Nothing to see here yet'))
            ]),
          )),
    );
  }
}

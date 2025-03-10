import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Jesse Kanadi'),
                subtitle: Text('@jessekanadi'),
                contentPadding: EdgeInsets.all(0),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  radius: 25,
                ),
              ),
              Text('Bio needs to be here...'),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  '100 Followers',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text('Edit Profile'),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text('Share Profile'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Threads',
                    ),
                    Tab(
                      text: 'Replies',
                    ),
                    Tab(
                      text: 'Repost',
                    )
                  ]),
              Expanded(
                  child: TabBarView(children: [
                Center(
                  child: Text('Your Threads here'),
                ),
                Center(
                  child: Text('Your Replies here'),
                ),
                Center(
                  child: Text('Your Repost here'),
                )
              ]))
            ],
          ),
        )),
      ),
    );
  }
}

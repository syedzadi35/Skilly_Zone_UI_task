import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _myTabBarState();
}

// ignore: camel_case_types
class _myTabBarState extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 101, 206, 110),
            title: const Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: "Status",
              ),
              Tab(
                icon: Icon(Icons.call),
                text: "Calls",
              )
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/GIRLS.jpg"),
                    ),
                    title: Text("syeda maira"),
                    subtitle: Text("How are you"),
                    trailing: Text("12:00 AM"),
                  );
                }),
            Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/GIRLS.jpg"),
                  ),
                  title: Text("My Status"),
                  subtitle: Text("Tap to add status"),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/GIRLS.jpg"),
                          ),
                          title: Text("syeda maira"),
                          subtitle: Text("5 minutes ago"),
                        );
                      }),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/GIRLS.jpg"),
                    ),
                    title: Text("syeda maira"),
                    subtitle: Text("Missed call at 10:00 PM"),
                    trailing: Icon(Icons.call),
                  );
                }),
          ]),
        ));
  }
}

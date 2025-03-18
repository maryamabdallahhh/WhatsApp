import 'package:flutter/material.dart';
import 'package:whatsapp/features/data/users.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: ImageIcon(AssetImage('assets/images/call.png')),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListTile(
            leading: const CircleAvatar(
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
              backgroundColor: Color(0xff017B6B),
              radius: 30,
            ),
            title: const Text('Create call link'),
            subtitle: const Text('share a link for your WahtsApp call'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: Text('Recent'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: callUsers.length,
              itemBuilder: (BuildContext context, int index) {
                var users = callUsers[index];
                return ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(users.image),
                  ),
                  title: Text(
                    users.name,
                    style: TextStyle(
                        color: users.missed ? Colors.red : Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.arrow_outward,
                        size: 18,
                        color: users.missed ? Colors.red : Color(0xff017B6B),
                      ),
                      Text(users.massage),
                    ],
                  ),
                  trailing: users.missed
                      ? Icon(
                          Icons.videocam,
                          color: Color(0xff017B6B),
                        )
                      : Icon(
                          Icons.call,
                          color: Color(0xff017B6B),
                        ),
                );
              },
            ),
          )
        ]));
  }
}

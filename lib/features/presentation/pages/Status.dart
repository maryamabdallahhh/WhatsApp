import 'package:flutter/material.dart';
import 'package:whatsapp/features/data/users.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/me.png'),
                  radius: 30,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: Color(0xff017B6B),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 15)),
                  ),
                )
              ],
            ),
            title: const Text('My Status'),
            subtitle: const Text('Tab to add status update'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: Text('Recent update'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: statUsers.length,
              itemBuilder: (BuildContext context, int index) {
                var users = statUsers[index];
                return ListTile(
                    onTap: () {},
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xff017B6B), width: 2.5)),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users.image),
                      ),
                    ),
                    title: Text(
                      users.name,
                    ),
                    subtitle: Text(
                      users.massage,
                    ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 5,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Color(0xff02B099),
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Color(0xff017B6B),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.camera_alt_rounded,
              ),
            ),
          )
        ],
      ),
    );
  }
}

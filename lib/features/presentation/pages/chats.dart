import 'package:flutter/material.dart';
import 'package:whatsapp/features/data/users.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const ImageIcon(AssetImage('assets/images/massage.png')),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 2.2,
          thickness: .5,
          indent: 10,
          endIndent: 10,
        ),
        itemCount: chatUsers.length,
        itemBuilder: (BuildContext context, int index) {
          var user = chatUsers[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(user.image),
              radius: 30,
            ),
            title: Text(user.name),
            subtitle: Row(
              children: [
                if (user.send)
                  Icon(
                    user.isviewed ? Icons.done_all_sharp : Icons.done,
                    color: user.isviewed ? Colors.blue : Colors.grey,
                    size: 18,
                  ),
                Text(user.massage)
              ],
            ),
            trailing: Text(user.time),
            onTap: () {},
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
 
class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: ImageIcon(AssetImage('assets/images/cam.png')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/me.png'),
                    radius: 30,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Color(0xff017B6B),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child:
                              Icon(Icons.add, color: Colors.white, size: 15)),
                    ),
                  )
                ],
              ),
              title: Text('My Status'),
              subtitle: Text('Tab to add status update'),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Recent update'),
            ),
           ],
        ));
  }
}

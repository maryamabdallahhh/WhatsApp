import 'package:flutter/material.dart';
import 'package:whatsapp/features/presentation/pages/Status.dart';
import 'package:whatsapp/features/presentation/pages/calls.dart';
import 'package:whatsapp/features/presentation/pages/chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage('assets/images/camera.png'))),
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage('assets/images/search.png'))),
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage('assets/images/options.png'))),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: ImageIcon(
                size: 33,
                AssetImage('assets/images/communtiy.png'),
              ),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(),
          Chats(),
          Status(),
          Calls(),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
          centerTitle: false,
          backgroundColor: Colors.teal,
          title: Text('Whatsapp', style: TextStyle(color: Colors.white)),
          bottom: TabBar(
            labelColor: Colors.white, 
            unselectedLabelColor: Colors.white70, 
            indicatorColor: Colors.white,
            tabs: [
            Icon(Icons.camera_alt),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10,)
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            Text('Chats'),
            Text('Status'),
            Text('Calls')
          ]
        ),
      ),
    );
  }
}

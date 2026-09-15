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
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('New Group')),
                PopupMenuItem(value: 2, child: Text('Settings')),
                PopupMenuItem(value: 3, child: Text('Log out')),
              ],
            ),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 15,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn.britannica.com/67/126567-050-A5C3A312/Paulo-Coelho-departure-themes-thriller-serial-killer-2008.jpg'
                    ),
                  ),
                  title: Text('Paulo Coelho'),
                  subtitle: Text('65 million copies sold...Hurrayyy!!!'),
                  trailing: Text('10:48 PM'),
                );
              }),
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3
                      )
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://cdn.britannica.com/67/126567-050-A5C3A312/Paulo-Coelho-departure-themes-thriller-serial-killer-2008.jpg'
                      ),
                    ),
                  ),
                  title: Text('Paulo Coelho'),
                  subtitle: Text('43 mints ago'),
                  trailing: Icon(Icons.donut_large),
                );
              }),
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn.britannica.com/67/126567-050-A5C3A312/Paulo-Coelho-departure-themes-thriller-serial-killer-2008.jpg'
                    ),
                  ),
                  title: Text('Paulo Coelho'),
                  subtitle: Text('You missed a call'),
                  trailing: Icon(Icons.phone),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

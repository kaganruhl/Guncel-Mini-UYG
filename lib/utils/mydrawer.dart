import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/1.jpg")),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Kagan Ruhl"),
          ],
        )),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("Ana Sayfa"),
          onTap: () => Navigator.pushNamed(context, "/"),
        ),
        ListTile(
          leading: const Icon(Icons.add_box_sharp),
          title: const Text("TodoListModel"),
          onTap: () => Navigator.pushNamed(context, "todolistmodel"),
        )
      ],
    ));
  }
}

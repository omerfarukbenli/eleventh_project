import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/second.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uygulama başlığı'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.yellow),
            child: Text('Özellikler'),
          ),
          ListTile(
            title: const Text('Ayarlar'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Ses Ayarları'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Second()),
              );
            },
          ),
        ],
      )),
    );
  }
}

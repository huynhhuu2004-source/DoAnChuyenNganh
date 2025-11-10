import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  int indexNow = 0; 
  final List<Widget> _pages = [
    Center(child: Text('Giao diện 1')),
    Center(child: Text('Giao diện 2')),
    Center(child: Text('Giao diện 3')),
    Center(child: Text('Giao diện 4')),
  ];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
         
      body:_pages[indexNow],
      bottomNavigationBar: BottomNavigationBar(
         
         currentIndex: indexNow,
        onTap: (index) {
          setState(() {
            indexNow = index; 
          });
        },

   
           selectedItemColor: Colors.black,
           unselectedItemColor: Colors.grey,

        items: [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Item 1',
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Item 2',
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Item 3',
           ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Item 4',
          ),

        ]
        
        ),
    );
  }
}
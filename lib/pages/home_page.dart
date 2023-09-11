import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page_id';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _screens = [
    Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: const Text(
        'Canteen',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.purple,
      alignment: Alignment.center,
      child: const Text(
        'Complaint',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: const Text(
        'Proposal',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.lightBlue,
      alignment: Alignment.center,
      child: const Text(
        'Schedule',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          if(MediaQuery.of(context).size.width>=640)
          NavigationRail(
            onDestinationSelected: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },
              destinations: const [
                NavigationRailDestination(icon: Icon(Icons.kitchen), label: Text('Canteen')),
                NavigationRailDestination(icon: Icon(Icons.edit_note_sharp), label: Text('Complaint')),
                NavigationRailDestination(icon: Icon(Icons.add_chart_sharp), label: Text('Proposal')),
                NavigationRailDestination(icon: Icon(Icons.table_view_outlined), label: Text('Schedule')),
              ],
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(color: Colors.teal),
              selectedIndex: _selectedIndex),
          Expanded(child: _screens[_selectedIndex]),
        ],
      ),

      //Bottom Navigation Bar
      bottomNavigationBar: MediaQuery.of(context).size.width<640? BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.kitchen), label: 'Canteen'),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_note_sharp), label: 'Complaint'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart_sharp), label: 'Proposal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_view_outlined), label: 'Schedule'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.indigoAccent,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ):null,
    );
  }
}

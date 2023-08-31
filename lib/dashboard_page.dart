import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.all(16.0),
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Item 1'),
              subtitle: Text('Description for Item 1'),
              onTap: () {
                // Action when item 1 is tapped
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(16.0),
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Item 2'),
              subtitle: Text('Description for Item 2'),
              onTap: () {
                // Action when item 2 is tapped
              },
            ),
          ),
          // Add more cards for other dashboard items
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum ResponsiveLayout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AdminDashboard(),
    );
  }
}

Widget _buildStatCard(
    String count, 
    Color color
  ) {
    return Card(
      color: color,
      child: Container(
        width: 300,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        title: const Text(
          'Header',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.notifications
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.account_circle
            )
          ),
          const SizedBox(width: 20)
        ],
      ),

      body: Row(
        children: [  
          Container(
            width: 250,
            color: Colors.grey[200],
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text('Dashboard'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Setting'),
                  onTap: () {},
                ),
              ],
            ),
          ),

          //isi content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatCard('1', Colors.pink),
                      _buildStatCard('2', Colors.orange),
                      _buildStatCard('3', Colors.green),
                      _buildStatCard('4', Colors.blue),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoring Karyawan WFH'),
      ),
      body: ListView(
        children: [
          EmployeeCard(name: 'Aditya Pratama', wfhStatus: true),
          EmployeeCard(name: 'Atha Arya Satya', wfhStatus: false),
          EmployeeCard(name: 'Gibran', wfhStatus: true),
          EmployeeCard(name: 'Peter Parker', wfhStatus: true),
          EmployeeCard(name: 'Marcelius', wfhStatus: false),
          EmployeeCard(name: 'Edrogan Kruntusion', wfhStatus: false),
          EmployeeCard(name: 'Rifqi Lontong', wfhStatus: true),
          EmployeeCard(name: 'Ucok Jangkung', wfhStatus: true),
          EmployeeCard(name: 'Jindan Priok', wfhStatus: false),
          // Add more employee cards as needed
        ],
      ),
    );
  }
}

class EmployeeCard extends StatelessWidget {
  final String name;
  final bool wfhStatus;

  EmployeeCard({required this.name, required this.wfhStatus});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(wfhStatus ? 'WFH Status: Remote' : 'WFH Status: In Office'),
        // Add more details as needed
      ),
    );
  }
}

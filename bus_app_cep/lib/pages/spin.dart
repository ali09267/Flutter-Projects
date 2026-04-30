// import 'package:flutter/material.dart';
// import 'package:bus_app_cep/services/bus.dart';

// class Spin extends StatefulWidget {
//   const Spin({super.key});
//   @override
//   State<Spin> createState() => _SpinState();
// }

// //state of Spin widget
// class _SpinState extends State<Spin> {
//   String bus = "Loading...";
//   void setupBuses() async {
//     Bus ins = Bus(
//       origin: 'Karachi',
//       destination: 'Hyderabad',
//       time: '10:00 AM',
//       fare: 500,
//     );
//     await ins.getData();
//     setState(() {
//       bus = ins.origin!;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     setupBuses();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(padding: EdgeInsets.all(50.0), child: Text(bus)),
//     );
//   }
// }

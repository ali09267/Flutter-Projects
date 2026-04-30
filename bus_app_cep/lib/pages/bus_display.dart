import 'package:flutter/material.dart';
import '../services/bus.dart';

class BusListScreen extends StatefulWidget {
  const BusListScreen({super.key});

  @override
  State<BusListScreen> createState() => _BusListScreenState();
}

class _BusListScreenState extends State<BusListScreen> {
  String? error;
  List<Bus> buses = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadBuses();
  }

  void loadBuses() async {
    try {
      buses = await Bus.fetchBuses();
    } catch (e) {
      error = "Failed to load data";
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bus Schedules",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.grey[400],
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : error != null
          ? Center(child: Text(error!))
          : ListView.builder(
              // ✅ SUCCESS STATE
              itemCount: buses.length,
              itemBuilder: (context, index) {
                final bus = buses[index];

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: const Icon(Icons.directions_bus),
                    title: Text(bus.route),
                    subtitle: Text(
                      "Time: ${bus.time}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 33, 159, 243),
                      ),
                    ),
                    trailing: Text(
                      "Rs. ${bus.fare}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 15, 226, 11),
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class Bus {
  final String route;
  final String time;
  final String fare;

  Bus({required this.route, required this.time, required this.fare});

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      route: json['route_name'],
      time: json['departure_time'],
      fare: json['fare'],
    );
  }

  static Future<List<Bus>> fetchBuses() async {
    final response = await http.get(
      Uri.parse('https://mock-api.net/api/JamHydTransit/api/v1/bus-schedule'),
    );

    final Map<String, dynamic> data = jsonDecode(response.body);

    return (data['data'] as List).map((e) => Bus.fromJson(e)).toList();
  }
}

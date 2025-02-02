import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://10.0.2.2:5000"; // Change to your backend URL

  static Future<List<String>> fetchAnomalies(String userId) async {
    final response = await http.get(Uri.parse("$baseUrl/anomalies?user=$userId"));

    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");

    if (response.statusCode == 200) {
      return List<String>.from(json.decode(response.body));
    } else {
      throw Exception("Failed to load anomalies");
    }
  }


  static Future<String> fetchRecommendations(List<String> anomalies) async {
    final response = await http.post(
      Uri.parse("$baseUrl/recommend"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"anomalies": anomalies}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body)["recommendation"];
    } else {
      return "No recommendations available.";
    }
  }
}

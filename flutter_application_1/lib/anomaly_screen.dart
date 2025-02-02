// 

import 'package:flutter/material.dart';
import 'api_service.dart';

class AnomalyScreen extends StatefulWidget {
  final String userId;

  AnomalyScreen({required this.userId});

  @override
  _AnomalyScreenState createState() => _AnomalyScreenState();
}

class _AnomalyScreenState extends State<AnomalyScreen> {
  List<String> anomalies = [];
  bool isLoading = true;
  String recommendation = "";

  @override
  void initState() {
    super.initState();
    fetchAnomalyData();
  }

  void fetchAnomalyData() async {
    try {
      List<String> data = await ApiService.fetchAnomalies(widget.userId);
      String aiRecommendation = await ApiService.fetchRecommendations(data);

      setState(() {
        anomalies = data;
        isLoading = false;
        recommendation = formatRecommendation(aiRecommendation);
      });
    } catch (e) {
      setState(() {
        anomalies = ["Error fetching data"];
        isLoading = false;
        recommendation = "Unable to generate recommendations.";
      });
    }
  }

  String formatRecommendation(String rawText) {
    List<String> points = rawText.split('.').where((p) => p.trim().isNotEmpty).toList();
    String formatted = "";
    for (int i = 0; i < points.length; i++) {
      formatted += "${i + 1}. ${points[i].trim()}.\n\n";
    }
    return formatted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anomaly Data for ${widget.userId}"),
        backgroundColor: Colors.deepPurple,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // Top 40% of the screen
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4 - AppBar().preferredSize.height,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: anomalies.isEmpty
                        ? Center(
                            child: Text(
                              "✅ No anomalies detected.",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          )
                        : ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            itemCount: anomalies.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 2,
                                margin: EdgeInsets.symmetric(vertical: 4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  dense: true,
                                  leading: Icon(
                                    Icons.warning_amber_rounded,
                                    color: Colors.red,
                                    size: 24,
                                  ),
                                  title: Text(
                                    anomalies[index],
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
                
                // Bottom 60% of the screen
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.smart_toy, color: Colors.blueGrey),
                                    SizedBox(width: 8),
                                    Text(
                                      "AI Recommendations",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey[800],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Text(
                                  recommendation,
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.5,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
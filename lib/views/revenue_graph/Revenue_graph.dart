import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class Revenue_graph extends StatefulWidget {
  const Revenue_graph({super.key});

  @override
  State<Revenue_graph> createState() => _Revenue_graphState();
}

class _Revenue_graphState extends State<Revenue_graph> {
  // Dropdown default values
  String dropdownValue = 'Last Year'; // For the first dropdown
  String dropdownValue2 = ' Year'; // For the second dropdown

  // Sample data for yearly sales
  final List<ChartData> yearlyData = [
    ChartData('Jan', 5000),
    ChartData('Feb', 10000),
    ChartData('Mar', 15000),
    ChartData('Apr', 20000),
    ChartData('May', 25000),
    ChartData('Jun', 30000),
    ChartData('Jul', 20000),
  ];

  // Sample data for comparing revenues (January)
  final List<ChartData> compareDataJanuary = [
    ChartData('Jan', 10000),
    ChartData('Feb', 15000),
    ChartData('Mar', 20000),
    ChartData('Apr', 25000),
    ChartData('May', 20000),
    ChartData('Jun', 30000),
  ];

  // Sample data for comparing revenues (February)
  final List<ChartData> compareDataFebruary = [
    ChartData('Jan', 8000),
    ChartData('Feb', 12000),
    ChartData('Mar', 18000),
    ChartData('Apr', 22000),
    ChartData('May', 17000),
    ChartData('Jun', 25000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color of the screen
      appBar: AppBar(
        // Leading back button
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        // Search icon in the AppBar
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined,
                color: Colors.white, size: 30),
          ),
        ],
        backgroundColor: Colors.black, // AppBar background color
        centerTitle: true,
        title: const Text(
          'Revenue', // Title text
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.03,
            vertical: SizeUtils.height * 0.01), // Padding for the body content
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header for Revenue Overview
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Revenue Overview", // Section title
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  // Dropdown for selecting duration
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    height: SizeUtils.height * 0.04,
                    width: SizeUtils.width * 0.24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), // Rounded border
                      border: Border.all(color: Colors.white),
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      dropdownColor: Colors.black, // Dropdown background
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      isExpanded: true, // Expand dropdown to full width
                      // Dropdown menu options
                      items: <String>[
                        'Last Year',
                        'Last 9 Month',
                        'Last 6 Month',
                        'Last 3 Month',
                        'Last Month',
                        'Last Week',
                        'Custom'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue =
                              newValue!; // Update the selected value
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ), // Spacing between elements

              // Displaying yearly sales
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Your Yearly Sale", // Left-aligned text
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Total Revenue : 500000 Rs", // Right-aligned text
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),

              // Line chart for yearly sales
              SizedBox(
                height: SizeUtils.height * 0.40, // Height of the chart
                child: SfCartesianChart(
                  plotAreaBorderWidth:
                      0, // Remove top and other borders from the plot area
                  backgroundColor: Colors.black, // Chart background
                  primaryXAxis: CategoryAxis(
                    labelStyle:
                        const TextStyle(color: Colors.white), // Axis style
                  ),
                  primaryYAxis: NumericAxis(
                    labelStyle:
                        const TextStyle(color: Colors.white), // Axis style
                    labelFormat: '{value}k', // Format axis labels with 'k'
                    numberFormat: NumberFormat
                        .compact(), // Compact representation for numbers (e.g., 5k)
                  ),
                  series: <CartesianSeries>[
                    LineSeries<ChartData, String>(
                      dataSource: yearlyData, // Data source for the chart
                      xValueMapper: (ChartData data, _) =>
                          data.x, // X-axis mapping
                      yValueMapper: (ChartData data, _) =>
                          data.y /
                          1000, // Y-axis mapping (converted to thousands)
                      color: Colors.amber, // Line color
                      markerSettings: const MarkerSettings(
                          isVisible: true), // Show markers on points
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ), // Spacing between elements

              // Header for comparing revenue
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Compare Revenue", // Section title
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // Dropdown for comparison duration
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    height: SizeUtils.height * 0.04,
                    width: SizeUtils.width * 0.24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), // Rounded border
                      border: Border.all(color: Colors.white),
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue2,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      dropdownColor: Colors.black, // Dropdown background
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      isExpanded: true, // Expand dropdown to full width
                      // Dropdown menu options
                      items: <String>[
                        ' Year',
                        'Month',
                        'Date',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue =
                              newValue!; // Update the selected value
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ), // Spacing between elements
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Display growth rate
                  Text(
                    "Growth Rate: ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " +12% ", // Growth rate in green color
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "from last month", // Additional information
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.height * 0.01,
              ),

              // Line chart for comparing revenue
              SizedBox(
                height: SizeUtils.height * 0.32, // Height of the chart
                child: SfCartesianChart(
                  plotAreaBorderWidth:
                      0, // Remove top and other borders from the plot area
                  backgroundColor: Colors.black, // Chart background
                  primaryXAxis: CategoryAxis(
                    labelStyle:
                        const TextStyle(color: Colors.white), // Axis style
                  ),
                  primaryYAxis: NumericAxis(
                    labelStyle:
                        const TextStyle(color: Colors.white), // Axis style
                    labelFormat: '{value}k', // Format axis labels with 'k'
                    numberFormat: NumberFormat
                        .compact(), // Compact representation for numbers
                  ),
                  series: <CartesianSeries>[
                    LineSeries<ChartData, String>(
                      dataSource: compareDataJanuary, // Data for January
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) =>
                          data.y / 1000, // Convert to thousands
                      name: 'January', // Legend name
                      color: Colors.amber, // Line color
                      markerSettings:
                          const MarkerSettings(isVisible: true), // Show markers
                    ),
                    LineSeries<ChartData, String>(
                      dataSource: compareDataFebruary, // Data for February
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) =>
                          data.y / 1000, // Convert to thousands
                      name: 'February', // Legend name
                      color: Colors.blue, // Line color
                      markerSettings:
                          const MarkerSettings(isVisible: true), // Show markers
                    ),
                  ],
                  legend: Legend(
                    isVisible: true, // Show legend
                    textStyle: TextStyle(
                        color:
                            Colors.white.withAlpha(102)), // Legend text style
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Chart data model class
class ChartData {
  final String x; // X-axis value
  final double y; // Y-axis value
  ChartData(this.x, this.y);
}

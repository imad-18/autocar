import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChartBars extends StatefulWidget {
  const ChartBars({super.key});

  @override
  State<ChartBars> createState() => _ChartBarsState();
}

class _ChartBarsState extends State<ChartBars> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> _chartData = []; // To hold fetched Firestore data
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchChartData();
  }

  void fetchChartData() async {
    try {
      QuerySnapshot snapshot =
          await _firestore.collection('barChartData').get();
      setState(() {
        // Predefine the desired order of days,
        // cuz data is not ordered in Firebase
        List<String> daysOrder = [
          'Monday',
          'Tuesday',
          'Wednesday',
          'Thursday',
          'Friday',
          'Saturday',
          'Sunday'
        ];
        // Extract document ID (day) and value
        _chartData = snapshot.docs.map((doc) {
          return {
            'day': doc.id, // Document ID as day to use it's 1st letter only
            'value': doc['value'], // Corresponding value field
          };
        }).toList()
          ..sort((a, b) => daysOrder
              .indexOf(a['day'])
              .compareTo(daysOrder.indexOf(b['day'])));

        _isLoading = false;
      });
    } catch (e) {
      print('Error fetching chart data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        const Text(
          '2h 20m',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFD04E),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 0),
        const Text(
          'Average time you spend per day',
          style: TextStyle(
            fontSize: 14,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        AspectRatio(
          aspectRatio: 1.7, //
          child: BarChart(
            BarChartData(
              barTouchData: barTouchData,
              titlesData: titlesData,
              borderData: borderData,
              barGroups: barGroups,
              gridData: const FlGridData(show: false),
              alignment: BarChartAlignment.spaceAround,
              maxY: 20,
            ),
          ),
        ),
      ],
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Color(0xFFFFD04E), //numbers
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xFFFFD04E), //days
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    // --Ensure the value is within range
    if (value.toInt() < 0 || value.toInt() >= _chartData.length) {
      return const SizedBox.shrink();
    }

    // Extract the corresponding day (document ID) from _chartData
    String day = _chartData[value.toInt()]['day'];

    // Use the first letter of the document ID for the title
    String text = day.isNotEmpty ? day[0].toUpperCase() : '';
    // ----
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  LinearGradient get _barsGradient => const LinearGradient(
        colors: [
          Colors.orange,
          Color(0xFFFFD04E),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  // --Generate BarChartGroupData from fetched data
  List<BarChartGroupData> get barGroups {
    return _chartData.asMap().entries.map((entry) {
      int index = entry.key; // Index from the _chartData list
      Map<String, dynamic> data = entry.value;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: data['value'].toDouble(),
            gradient: _barsGradient,
            width: 20,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
        showingTooltipIndicators: [0],
      );
    }).toList();
  }
}
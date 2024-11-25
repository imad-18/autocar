import 'package:flutter/material.dart';

import 'chart_bars.dart';

class Personalinfos extends StatelessWidget {
  const Personalinfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Daily usage',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2),
          width: double.maxFinite,
          height: 310,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFFFD04E),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const ChartBars(),
        )
      ],
    );
  }
}

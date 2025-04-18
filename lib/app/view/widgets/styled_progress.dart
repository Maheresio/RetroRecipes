import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StyledProgress extends StatelessWidget {
  final String? name, amount;
  final String percentage;
  final Color color;
  final double data;
  const StyledProgress({
    super.key,
    required this.name,
    required this.amount,
    required this.percentage,
    required this.color,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 30,
      circularStrokeCap: CircularStrokeCap.round,
      percent: data,
      lineWidth: 12,
      reverse: true,
      backgroundColor: color.withValues(alpha: 0.2),
      animation: true,
      animationDuration: 500,
      restartAnimation: true,
      progressColor: color,
      header: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          name!,
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.6),
            fontSize: 12,
          ),
        ),
      ),
      footer: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$amount ',
                style: const TextStyle(color: Colors.black, fontSize: 12),
              ),
              TextSpan(
                text: percentage,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

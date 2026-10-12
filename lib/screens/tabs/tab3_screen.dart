import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salary Benchmarks 2026', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(20)),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Senior Mobile Developer Median', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
              SizedBox(height: 8),
              Text('\$152,000 / yr', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppTheme.secondary)),
              SizedBox(height: 8),
              Text('Top 10% compensation package: \$210,000 with equity.', style: TextStyle(color: Colors.white70, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applications Pipeline', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildStage('Applied (14)', Colors.blueGrey),
            _buildStage('Technical Screen (3)', Colors.amber),
            _buildStage('Final Interview (1)', Colors.greenAccent),
          ],
        ),
      ),
    );
  }

  Widget _buildStage(String title, Color c) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
          CircleAvatar(radius: 8, backgroundColor: c),
        ],
      ),
    );
  }
}

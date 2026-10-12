import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  String _filter = 'Remote';

  final jobs = [
    {'role': 'Senior Flutter Engineer', 'company': 'Stripe Cloud', 'sal': '\$140k - \$175k', 'tag': 'Remote • Full-time'},
    {'role': 'Mobile Architect', 'company': 'Fintech Neo', 'sal': '\$160k - \$190k', 'tag': 'Hybrid • NYC'},
    {'role': 'Dart SDK Developer', 'company': 'OpenSource Lab', 'sal': '\$130k - \$155k', 'tag': 'Remote • Contract'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Career Radar • Vacancies', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.stars_rounded, color: AppTheme.secondary),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: ['Remote', 'High Salary', 'Urgent'].map((f) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  label: Text(f),
                  selected: _filter == f,
                  selectedColor: AppTheme.primary.withValues(alpha: 0.3),
                  onSelected: (val) => setState(() => _filter = f),
                ),
              )).toList(),
            ),
            const SizedBox(height: 16),
            ...jobs.map((j) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(j['role'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                      Text(j['sal'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.secondary)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text('${j['company']} • ${j['tag']}', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => RoutingService.openRegistrationUrl(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primary,
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(38),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text('1-Click Quick Apply'),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

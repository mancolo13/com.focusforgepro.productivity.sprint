import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATS Resume Optimization', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ATS Compatibility Score: 94%', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                  SizedBox(height: 6),
                  Text('Your profile ranks in the top 5% of candidate matches for mobile engineering roles.', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => RoutingService.openRegistrationUrl(),
              style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.white, minimumSize: const Size.fromHeight(48)),
              child: const Text('Book 1-on-1 Executive Career Coach'),
            ),
          ],
        ),
      ),
    );
  }
}

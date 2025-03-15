import 'package:flutter/material.dart';

class MaternalApproachesScreen extends StatelessWidget {
  const MaternalApproachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maternal Approaches'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Helpful Tips & Guides',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildTipCard(
              'Tip 1: Bonding with Your Baby',
              'Spend quality time holding, cuddling, and talking to your baby. Skin-to-skin contact is especially beneficial.',
            ),
            _buildTipCard(
              'Tip 2: Feeding Your Baby',
              'Whether breastfeeding or formula-feeding, ensure your baby is getting enough nutrients and is comfortable during feeding.',
            ),
            _buildTipCard(
              'Tip 3: Sleep Patterns',
              'Establish a consistent sleep routine to help regulate your baby\'s sleep patterns.',
            ),
            _buildTipCard(
              'Tip 4: Self-Care',
              'Remember to take care of yourself. Rest when you can, eat healthy, and seek support when needed.',
            ),
             _buildTipCard(
              'Tip 5: Seek Help',
              'Do not be afraid to ask for help when you need it, motherhood can be hard at times',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipCard(String title, String content) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}
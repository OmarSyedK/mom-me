import 'package:flutter/material.dart';

class VideoTutorialsScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Baby Bathing Basics',
      'url': 'https://www.example.com/baby_bathing',
    },
    {
      'title': 'Feeding Your Newborn',
      'url': 'https://www.example.com/feeding_newborn',
    },
    {
      'title': 'Soothing a Crying Baby',
      'url': 'https://www.example.com/soothing_baby',
    },
    {
      'title': 'Baby Sleep Training',
      'url': 'https://www.example.com/baby_sleep',
    },
    {
      'title': 'Postpartum Recovery Tips',
      'url': 'https://www.example.com/postpartum_recovery',
    },
  ];

  VideoTutorialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Tutorials'),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(videos[index]['title']!),
              subtitle: const Text('Tap to watch'),
              onTap: () {
                // Handle video link
                // e.g., launch the URL using url_launcher
                print('Watch video: ${videos[index]['url']}');
              },
              leading: const Icon(Icons.video_library),
            ),
          );
        },
      ),
    );
  }
}
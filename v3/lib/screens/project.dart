import 'package:flutter/material.dart';
import 'package:portfolio/config.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ProjectCard(
            title: 'Project 1',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac magna in tortor vestibulum mollis sit amet vel nisi.',
            imageUrl: profileImage,
            projectUrl: 'https://example.com/project-1',
          ),
          SizedBox(height: 20),
          ProjectCard(
            title: 'Project 2',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac magna in tortor vestibulum mollis sit amet vel nisi.',
            imageUrl: profileImage,
            projectUrl: 'https://example.com/project-2',
          ),
          SizedBox(height: 20),
          ProjectCard(
            title: 'Project 3',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac magna in tortor vestibulum mollis sit amet vel nisi.',
            imageUrl: profileImage,
            projectUrl: 'https://example.com/project-3',
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
  }) : super(key: key);

  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Navigate to project detail screen when the card is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProjectDetailScreen(
                title: title,
                description: description,
                imageUrl: imageUrl,
                projectUrl: projectUrl,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
  }) : super(key: key);

  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Open project URL in browser
                    },
                    child: const Text('View Project'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

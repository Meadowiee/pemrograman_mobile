import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: InstagramProfilePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class InstagramProfilePage extends StatelessWidget {
  const InstagramProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("meadow.dev"),
        centerTitle: false,
        actions: const [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 16),
          Icon(Icons.menu),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PROFILE HEADER
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpeg'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        _ProfileStat(count: '120', label: 'Posts'),
                        _ProfileStat(count: '2.3K', label: 'Followers'),
                        _ProfileStat(count: '530', label: 'Following'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // BIO SECTION
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meadow 🌿',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('CS undergrad | Software Developer | UI/UX enthusiast'),
                  SizedBox(height: 4),
                  Text('www.meadow.dev', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // BUTTONS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Share Profile"),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // STORY HIGHLIGHTS
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      const SizedBox(height: 4),
                      const Text("Highlight", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ),

            const Divider(),

            // TAB BAR MOCK
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.grid_on),
                Icon(Icons.video_library_outlined),
                Icon(Icons.person_pin_outlined),
              ],
            ),

            // GRID OF POSTS
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) =>
                  Container(color: Colors.grey.shade300),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String count;
  final String label;

  const _ProfileStat({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(label),
      ],
    );
  }
}

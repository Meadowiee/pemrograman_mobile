import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: InstagramProfilePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class InstagramProfilePage extends StatefulWidget {
  const InstagramProfilePage({super.key});
  @override
  State<InstagramProfilePage> createState() => _InstagramProfilePageState();
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ), // Gunakan warna light
        // Buat keduanya start dengan jarak yang sesuai
      ],
    );
  }
}

class _InstagramProfilePageState extends State<InstagramProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("shafina_ardelia"),
        centerTitle: false,
        actions: const [
          Icon(Icons.notifications_none_rounded, size: 25),
          SizedBox(width: 14),
          Icon(Icons.more_vert_rounded, size: 25),
          SizedBox(width: 14),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpeg',
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Shafina Ardelia",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                _ProfileStat(count: '54', label: 'Posts'),
                                _ProfileStat(count: '834', label: 'Followers'),
                                _ProfileStat(count: '162', label: 'Following'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shafina Ardelia",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Undergraduate | Software Developer | UI/UX Enthusiast",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "www.shafinaardelia.com",
                  style: TextStyle(color: Colors.indigo),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

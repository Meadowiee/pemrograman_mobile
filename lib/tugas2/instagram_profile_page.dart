import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Profile Clone',
      theme: ThemeData(
        fontFamily: 'Roboto',
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: const InstagramProfilePage(),
    );
  }
}

class InstagramProfilePage extends StatelessWidget {
  const InstagramProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded, size: 28),
        title: Row(
          children: const [
            Text(
              'shafina_ardelia',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
            ),
          ],
        ),
        actions: const [Icon(Icons.more_vert, size: 24), SizedBox(width: 20)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header Section
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 8),
                      // Profile Picture
                      const CircleAvatar(
                        radius: 44,
                        backgroundImage: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),
                      const SizedBox(width: 26),
                      // Username and Stats
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Shafina Ardelia',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatColumn('3', 'posts'),
                                _buildStatColumn('536', 'followers'),
                                _buildStatColumn('734', 'following'),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Bio Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "💻 Computer Science '23 ULM",
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.2,
                          color: Colors.black,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.2,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: '🍵 Part of '),
                            TextSpan(
                              text: '@jagamental.id',
                              style: TextStyle(color: Color(0xFF134065)),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: '@pinme.more',
                              style: TextStyle(color: Color(0xFF134065)),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.2,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: '🦊 My twin '),
                            TextSpan(
                              text: '@orennjiboya',
                              style: TextStyle(color: Color(0xFF134065)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: 15,
                        child: const Icon(
                          Icons.link,
                          size: 20,
                          color: Color(0xFF134065),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'www.linkedin.com/in/shafina-ardelia',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF134065),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  // Followed by section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 50,
                              child: Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/follower3.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 25,
                              child: Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/follower1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              child: Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/follower2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 3),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              height: 1.1,
                            ),
                            children: [
                              TextSpan(text: 'Followed by '),
                              TextSpan(
                                text: 'dwnfb',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              TextSpan(text: ', '),
                              TextSpan(
                                text: 'orennji_juice',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              TextSpan(text: ' and '),
                              TextSpan(
                                text: '13 others',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: _buildButton('Follow', isBlue: true),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        flex: 5,
                        child: _buildButton('Message', isBlue: false),
                      ),
                      const SizedBox(width: 6),
                      _buildIconButton(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            // Story Highlights
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: 5,
                itemBuilder: (context, index) {
                  final labels = ['CS04', 'CS03', 'CS02', 'CS01', 'HS48'];
                  final imageUrls = [
                    'assets/images/highlight1.png',
                    'assets/images/highlight2.png',
                    'assets/images/highlight3.png',
                    'assets/images/highlight4.png',
                    'assets/images/highlight5.png',
                  ];
                  return _buildStoryHighlight(labels[index], imageUrls[index]);
                },
              ),
            ),
            const SizedBox(height: 12),
            // Tab Bar
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Colors.black,
                    indicatorWeight: 2,
                    labelColor: Colors.black,
                    unselectedLabelColor: Color.fromRGBO(97, 97, 97, 1),
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on, size: 29)),
                      Tab(
                        icon: Icon(Icons.video_collection_outlined, size: 29),
                      ),
                      Tab(icon: Icon(Icons.person_pin_outlined, size: 29)),
                    ],
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          childAspectRatio: 0.75,
                        ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.grey[900],
                        child: Image.asset(
                          'assets/images/posts$index.png',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 29),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 29),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 29),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined, size: 29),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String number, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.3,
            color: Colors.black,
          ),
        ),
        Text(label, style: const TextStyle(fontSize: 15, color: Colors.black)),
      ],
    );
  }

  Widget _buildButton(String text, {required bool isBlue}) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        color: isBlue
            ? const Color.fromRGBO(74, 93, 249, 1)
            : const Color(0xFFEFEFEF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isBlue ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton() {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xFFEFEFEF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.person_add_outlined,
        size: 18,
        color: Colors.black,
      ),
    );
  }

  Widget _buildStoryHighlight(String label, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey[300]!, width: 3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: ClipOval(child: Image.asset(imageUrl, fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(fontSize: 13.5, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

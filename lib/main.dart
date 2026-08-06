import 'package:flutter/material.dart';

void main() {
  runApp(const DigitalMohallaApp());
}

class DigitalMohallaApp extends StatelessWidget {
  const DigitalMohallaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Mohalla',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF7F9F8),
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}

// =========================================================================
// PAGE 1: SPLASH / WELCOME SCREEN CODE
// =========================================================================
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE8F5E9),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.mosque, color: Color(0xFF0C4B2E), size: 60),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Noori Jama Masjid',
                    style: TextStyle(
                      color: Color(0xFF0C4B2E),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('— ', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                      Text('Digital Mohalla', style: TextStyle(color: Colors.grey, fontSize: 13, letterSpacing: 1.2)),
                      Text(' —', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Apna Gaon, Apna Masjid,\nApni Zimmedari, Apna Saath',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Ek Behtar Mohalla, Ek Behtar Mustaqbil',
                    style: TextStyle(
                      color: Color(0xFF0C4B2E),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SplashFeatureItem(icon: Icons.group, label: 'Connected\nCommunity'),
                    SplashFeatureItem(icon: Icons.volunteer_activism, label: 'Easy\nContributions'),
                    SplashFeatureItem(icon: Icons.description, label: 'Transparent\nRecords'),
                    SplashFeatureItem(icon: Icons.verified_user, label: 'Trusted\nManagement'),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF0C4B2E), Color(0xFF1B7A49)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          '✨ Milkar Banayein – Saaf, Sundar aur Samriddh Mohalla',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF0C4B2E),
                            minimumSize: const Size(double.infinity, 45),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Text('Get Started', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Noori Jama Masjid Digital Mohalla App',
                    style: TextStyle(color: Colors.grey, fontSize: 9),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashFeatureItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const SplashFeatureItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFF1F8F5),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.green.shade100),
          ),
          child: Icon(icon, color: const Color(0xFF0C4B2E), size: 20),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 9, color: Colors.black54, height: 1.2, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

// =========================================================================
// PAGE 2: LOGIN SCREEN CODE
// =========================================================================
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F8F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xFFE8F5E9),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.mosque, color: Color(0xFF0C4B2E), size: 45),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Noori Jama Masjid',
                  style: TextStyle(color: Color(0xFF0C4B2E), fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '— Digital Mohalla —',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Apna Gaon, Apna Masjid,\nApni Zimmedari, Apna Saath',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87, fontSize: 11, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green.shade100),
                  ),
                  child: const Text(
                    '👥 Ek Behtar Mohalla, Ek Behtar Mustaqbil',
                    style: TextStyle(color: Color(0xFF0C4B2E), fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, spreadRadius: 2),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Color(0xFFE8F5E9),
                            child: Icon(Icons.person_outline, color: Color(0xFF0C4B2E), size: 18),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              Text('Login to continue', style: TextStyle(color: Colors.grey, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.phone_outlined, color: Colors.grey, size: 18),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Mobile Number',
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.lock_outline, color: Colors.grey, size: 18),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Icon(Icons.visibility_off_outlined, color: Colors.grey, size: 18),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.green.shade700, fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 14),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0C4B2E),
                          minimumSize: const Size(double.infinity, 45),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MainNavigationScreen()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          Expanded(child: Divider(color: Colors.grey)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text('or', style: TextStyle(color: Colors.grey, fontSize: 11)),
                          ),
                          Expanded(child: Divider(color: Colors.grey)),
                        ],
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.green.shade300),
                          minimumSize: const Size(double.infinity, 42),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MainNavigationScreen()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.verified_user_outlined, color: Color(0xFF0C4B2E), size: 16),
                            SizedBox(width: 8),
                            Text('Login with Authorised ID', style: TextStyle(color: Color(0xFF0C4B2E), fontWeight: FontWeight.bold, fontSize: 12)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('New here? ', style: TextStyle(color: Colors.grey, fontSize: 11)),
                            Text('Register Now', style: TextStyle(color: Colors.green.shade700, fontWeight: FontWeight.bold, fontSize: 11)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    LoginFeatureCard(icon: Icons.group, title: 'Connected\nCommunity', desc: 'Stay connected and\ninformed with your\ncommunity.'),
                    LoginFeatureCard(icon: Icons.volunteer_activism, title: 'Easy\nContributions', desc: 'Contribute easily and\nsecurely for a better\ntomorrow.'),
                    LoginFeatureCard(icon: Icons.verified_user, title: 'Secure &\nTrusted', desc: 'Your data and\ncontributions are\nsafe with us.'),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('❤️ Thank you for being a part of our community', style: TextStyle(color: Colors.grey, fontSize: 10)),
                const Text('Version 1.0.0', style: TextStyle(color: Colors.grey, fontSize: 9)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginFeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  const LoginFeatureCard({super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 4)],
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFE8F5E9),
            radius: 16,
            child: Icon(icon, color: const Color(0xFF0C4B2E), size: 16),
          ),
          const SizedBox(height: 4),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, height: 1.1)),
          const SizedBox(height: 2),
          Text(desc, textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey, fontSize: 7, height: 1.1)),
        ],
      ),
    );
  }
}

// =========================================================================
// BOTTOM NAVIGATION CONTROLLER CODE (Dashboard & Members Container)
// =========================================================================
class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const MembersScreen(),
    const Center(child: Text('Donate Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    const Center(child: Text('Accounts Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label: 'Members'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Donate'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

// =========================================================================
// PAGE 3: DASHBOARD SCREEN CODE
// =========================================================================
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.mosque, color: Colors.green, size: 22),
                SizedBox(width: 6),
                Text(
                  'Noori Jama Masjid',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Text(
              'Digital Mohalla',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                const Icon(Icons.notifications_outlined, color: Colors.black87),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF0C4B2E), Color(0xFF1B7A49)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Assalamu Alaikum',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Come to Salah,\nCome to Success.',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  QuickCategoryItem(icon: Icons.access_time, label: 'Namaz Time'),
                  QuickCategoryItem(icon: Icons.explore, label: 'Qibla'),
                  QuickCategoryItem(icon: Icons.menu_book, label: 'Quran'),
                  QuickCategoryItem(icon: Icons.book, label: 'Hadess'),
                  QuickCategoryItem(icon: Icons.grid_view, label: 'More'),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.05),
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xFFE8F5E9),
                      child: Icon(Icons.person, color: Colors.green),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Today's Imam", style: TextStyle(color: Colors.grey, fontSize: 11)),
                        Text("Maulana Abdul Qadir Sahab", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F5E9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(radius: 3, backgroundColor: Colors.green),
                          SizedBox(width: 5),
                          Text("LIVE ACTIVE", style: TextStyle(color: Colors.green, fontSize: 9, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Namaz Time', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text('View All', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 13)),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0C4B2E),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Asr', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                            SizedBox(height: 6),
                            Text('03:45 PM', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 6),
                            Text('01:25:30\nremaining', style: TextStyle(color: Colors.white70, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: const [
                          NamazTimeRow(name: 'Fajr', time: '04:35 AM', isSelected: false),
                          NamazTimeRow(name: 'Zohr', time: '12:35 PM', isSelected: false),
                          NamazTimeRow(name: 'Asr', time: '03:45 PM', isSelected: true),
                          NamazTimeRow(name: 'Maghrib', time: '06:49 PM', isSelected: false),
                          NamazTimeRow(name: 'Isha', time: '08:15 PM', isSelected: false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================================================================
// PAGE 4: MEMBERS SCREEN CODE
// =========================================================================
class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> membersList = [
      {'name': 'Mohd. Yusuf', 'role': 'Sadar', 'phone': '+91 98765 43210'},
      {'name': 'Haji A. Rahman', 'role': 'Secretary', 'phone': '+91 98765 43211'},
      {'name': 'Shakeel Ahmad', 'role': 'Khazanchi', 'phone': '+91 98765 43212'},
      {'name': 'Amanullah Khan', 'role': 'Member', 'phone': '+91 98765 43213'},
      {'name': 'Sajid Ali', 'role': 'Member', 'phone': '+91 98765 43214'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Members List', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: membersList.length,
        itemBuilder: (context, index) {
          final member = membersList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const CircleAvatar(backgroundColor: Color(0xFFE8F5E9), child: Icon(Icons.person, color: Colors.green)),
              title: Text(member['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(member['phone']!),
              trailing: Chip(
                label: Text(member['role']!, style: const TextStyle(fontSize: 10, color: Colors.green)),
                backgroundColor: const Color(0xFFE8F5E9),
              ),
            ),
          );
        },
      ),
    );
  }
}

// =========================================================================
// SUPPORTING WIDGETS
// =========================================================================
class QuickCategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const QuickCategoryItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 4)],
          ),
          child: Icon(icon, color: Colors.green, size: 22),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
      ],
    );
  }
}

class NamazTimeRow extends StatelessWidget {
  final String name;
  final String time;
  final bool isSelected;
  const NamazTimeRow({super.key, required this.name, required this.time, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFE8F5E9) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: TextStyle(fontSize: 11, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal, color: isSelected ? Colors.green : Colors.black87)),
          Text(time, style: TextStyle(fontSize: 11, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal, color: isSelected ? Colors.green : Colors.black87)),
        ],
      ),
    );
  }
}

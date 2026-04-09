import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Avatar
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple.shade100,
                  border: Border.all(
                    color: Colors.purple.shade500,
                    width: 3,
                  ),
                ),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.purple.shade700,
                ),
              ),
              const SizedBox(height: 24),
              // Student Name
              Text(
                'Abdul Shahariar Shafin',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Flutter Developer',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 32),
              // Information Cards
              ProfileInfoCard(
                title: 'Student ID',
                value: '2220744',
                icon: Icons.badge,
              ),
              const SizedBox(height: 12),
              ProfileInfoCard(
                title: 'Email',
                value: 'abdulshahariar@iub.edu.bd',
                icon: Icons.email,
              ),
              const SizedBox(height: 12),
              ProfileInfoCard(
                title: 'Institution',
                value: 'Independent University, Bangladesh',
                icon: Icons.school,
              ),
              const SizedBox(height: 32),
              // Bio Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.purple.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'I am a passionate Flutter developer interested in creating '
                      'beautiful and functional mobile applications. I enjoy learning '
                      'new technologies and implementing best practices in my code. '
                      'This assignment demonstrates my understanding of Flutter UI '
                      'design and navigation patterns.',
                      style: TextStyle(height: 1.6),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const ProfileInfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.purple.shade600),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3 - Favorites'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Favorites Page',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 40),
              Icon(
                Icons.favorite,
                size: 80,
                color: Colors.red.shade400,
              ),
              const SizedBox(height: 24),
              Text(
                'You liked this $_likeCount ${_likeCount == 1 ? 'time' : 'times'}!',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _likeCount++;
                  });
                },
                icon: const Icon(Icons.thumb_up),
                label: const Text('Like'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                onPressed: () {
                  setState(() {
                    _likeCount = 0;
                  });
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Reset'),
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.pink.shade200),
                ),
                child: const Text(
                  'This interactive page demonstrates state management. '
                  'Click the Like button to increase the counter.',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

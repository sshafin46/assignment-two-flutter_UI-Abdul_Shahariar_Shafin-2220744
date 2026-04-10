import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            // Header with notification bell
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Abdul Shahariar Shafin',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade50,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.blue.shade600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Title
            const Text(
              'Monthly Spending Report',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Total Expenses Card
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total Expenses (Last 30 days)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '-\$1270.00',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              size: 16,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'Up 12% from last month',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Spending Breakdown Title
            const Text(
              'Spending Breakdown',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Spending Categories
            _SpendingCategory(
              label: 'Food & Drink',
              amount: '\$480.00',
              percentage: 35,
              color: Colors.red,
            ),
            const SizedBox(height: 12),
            _SpendingCategory(
              label: 'Shopping',
              amount: '\$320.00',
              percentage: 25,
              color: Colors.orange,
            ),
            const SizedBox(height: 12),
            _SpendingCategory(
              label: 'Housing',
              amount: '\$280.00',
              percentage: 22,
              color: Colors.yellow.shade700,
            ),
            const SizedBox(height: 12),
            _SpendingCategory(
              label: 'Transport',
              amount: '\$150.00',
              percentage: 12,
              color: Colors.green,
            ),
            const SizedBox(height: 12),
            _SpendingCategory(
              label: 'Other',
              amount: '\$70.00',
              percentage: 6,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class _SpendingCategory extends StatelessWidget {
  final String label;
  final String amount;
  final int percentage;
  final Color color;

  const _SpendingCategory({
    required this.label,
    required this.amount,
    required this.percentage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '$amount ($percentage%)',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: percentage / 100,
            minHeight: 8,
            backgroundColor: Colors.grey.shade300,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';


class SubscriptionPage extends StatelessWidget {
  final List<Map<String, dynamic>> subscriptions = [
    {
      'title': 'Basic',
      'highlight': 'Popular',
      'price': '1.44',
      'duration': '/Monthly',
      'features': [
        'Enhance Your Experience',
        'Enhance Your Experience',
        'Enhance Your Experience',
        'Enhance Your Experience',
        'Enhance Your Experience',
      ],
      'buttonColor': Colors.redAccent,
    },
    {
      'title': 'Premium',
      'highlight': '',
      'price': '5.99',
      'duration': '/Monthly',
      'features': [
        'Unlock All Features',
        'Priority Support',
        'Advanced Analytics',
        'Enhance Your Experience',
        'Enhance Your Experience',
      ],
      'buttonColor': Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe Today'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              style: TextStyle(color: Colors.grey,fontSize: 17),
            ),
          ),
          SizedBox(height: 16),
          // Horizontal Subscription List
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: subscriptions.length,
              itemBuilder: (context, index) {
                final subscription = subscriptions[index];
                return SubscriptionCard(
                  title: subscription['title'],

                  highlight: subscription['highlight'],
                  price: subscription['price'],
                  duration: subscription['duration'],
                  features: subscription['features'],
                  buttonColor: subscription['buttonColor'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String title;
  final String highlight;
  final String price;
  final String duration;
  final List<String> features;
  final Color buttonColor;

  const SubscriptionCard({
    required this.title,
    required this.highlight,
    required this.price,
    required this.duration,
    required this.features,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293,
      height: 535,
      margin: EdgeInsets.only(right: 16,left: 11,bottom: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.red, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title and Highlight
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 33,),
                if (highlight.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "($highlight)",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 11),
            // Price
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '\$$price',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: duration,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),
            // Pay Monthly Button
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Pay Monthly",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Features List
            Column(
              children: features
                  .map(
                    (feature) => Row(
                  children: [

                   Padding(padding: EdgeInsets.only(bottom: 22,left: 5,)),
                    SizedBox(height: 52,),
                    Icon(Icons.check_circle, color: Colors.red, size: 18),
                    SizedBox(width: 11),

                    Expanded(
                      child: Text(
                        feature,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
                  .toList(),
            ),
            Spacer(),
            // Subscribe Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Subscribe",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FLutterRatingBar extends StatefulWidget {
  const FLutterRatingBar({Key? key}) : super(key: key);

  @override
  State<FLutterRatingBar> createState() => _FLutterRatingBarState();
}

class _FLutterRatingBarState extends State<FLutterRatingBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rating Bar'),
      ),
      body: const RatingBarExamples(),
    );
  }
}

class RatingBarExamples extends StatefulWidget {
  const RatingBarExamples({Key? key}) : super(key: key);

  @override
  State<RatingBarExamples> createState() => _RatingBarExamplesState();
}

class _RatingBarExamplesState extends State<RatingBarExamples> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text('Standard Rating Bar'),
          const SizedBox(height: 20),
          RatingBar.builder(
            initialRating: 3,
            itemSize: 24,
            itemCount: 8,
            minRating: 1,
            maxRating: 8,
            allowHalfRating: true,
            updateOnDrag: true,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.indigo,
            ),
            onRatingUpdate: (rating) => print(rating),
          ),
          const SizedBox(height: 40),
          const Text('Standart Rating Bar'),
          const SizedBox(height: 20),
          RatingBar.builder(
            initialRating: 3,
            updateOnDrag: true,
            glow: true,
            glowColor: Colors.indigo,
            unratedColor: Colors.black12,
            itemPadding: EdgeInsets.symmetric(horizontal: 8),
            glowRadius: 1,
            itemCount: 5,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const Icon(
                    Icons.sentiment_very_dissatisfied,
                    color: Colors.red,
                  );
                case 1:
                  return const Icon(
                    Icons.sentiment_dissatisfied,
                    color: Colors.redAccent,
                  );
                case 2:
                  return const Icon(
                    Icons.sentiment_neutral,
                    color: Colors.amber,
                  );
                case 3:
                  return const Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.lightGreen,
                  );
                case 4:
                  return const Icon(
                    Icons.sentiment_very_satisfied,
                    color: Colors.green,
                  );
              }
              throw Exception(); // Add for work
            },
            onRatingUpdate: (rating) => print(rating),
          ),
        ],
      ),
    );
  }
}

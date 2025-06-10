import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 300),
            animationDuration: const Duration(milliseconds: 1000),
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            child: Text(title, style: textTheme.titleMedium),
          ),
          const SizedBox(height: 10),
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 500),
            animationDuration: const Duration(milliseconds: 1000),
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            child: Text(
              description,
              style: textTheme.bodyMedium?.copyWith(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        // Image
        Positioned(
          top: size.height * 0.1,
          child: SizedBox(
            width: size.width,
            height: size.height * 0.5,
            child: Center(
              child: DelayedWidget(
                delayDuration: const Duration(milliseconds: 300),
                animationDuration: const Duration(milliseconds: 1000),
                animation: DelayedAnimations.SLIDE_FROM_TOP,

                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
          ),
        ),

        // Content
        Positioned(
          bottom: size.height * 0.2,
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                DelayedWidget(
                  delayDuration: const Duration(milliseconds: 300),
                  animationDuration: const Duration(milliseconds: 1000),
                  animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(title, style: textTheme.titleMedium),
                  ),
                ),
                const SizedBox(height: 10),
                DelayedWidget(
                  delayDuration: const Duration(milliseconds: 500),
                  animationDuration: const Duration(milliseconds: 1000),
                  animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Shimmer.fromColors(
                      baseColor: Colors.black87,
                      highlightColor: Colors.white60,
                      period: const Duration(milliseconds: 1500),
                      child: Text(
                        description,
                        style: textTheme.bodyMedium?.copyWith(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

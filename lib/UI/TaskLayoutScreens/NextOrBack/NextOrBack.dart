import 'package:flutter/material.dart';
import '../../../core/resources/routesManger/Colors_Manger.dart';
class IntroNavigationBar extends StatelessWidget {
  final int currentIndex;
  final int totalPages;
  final VoidCallback onNext;
  const IntroNavigationBar({
    super.key,
    required this.currentIndex,
    required this.totalPages,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(
              totalPages, (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: index == currentIndex ? ColorsMang.gold : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: onNext,
            child: const Text(
              'Next',
              style: TextStyle(
                color: ColorsMang.gold,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

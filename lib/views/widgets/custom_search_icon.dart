import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, this.icon});
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          icon ?? Icons.search, // إذا ما انمررت أيقونة، افتراضي بحث
          size: 28,
        ),
      ),
    );
  }
}

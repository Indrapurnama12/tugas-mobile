import 'package:flutter/material.dart';

class GridMenuItem extends StatelessWidget {
  final String label;
  final String imagePath;

  const GridMenuItem({super.key, required this.label, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 22, 27, 1).withOpacity(0.12),
            const Color.fromARGB(255, 255, 0, 0).withOpacity(0.04),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.15)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 3, 217, 255).withOpacity(0.25),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image Icon
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),

          const SizedBox(height: 8),

          // Label
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

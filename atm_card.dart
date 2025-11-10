import 'package:flutter/material.dart';

class AtmCard extends StatelessWidget {
  final String bankName;
  final String cardNumber;
  final String balance;
  final Color color1;
  final Color color2;

  const AtmCard({
    super.key,
    required this.bankName,
    required this.cardNumber,
    required this.balance,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      // ✅ sedikit rotasi supaya terlihat 3D
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // depth
        ..rotateX(-0.07)
        ..rotateY(0.07),
      child: Container(
        width: 300,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            // ✅ shadow utama (tebal seperti 3D object)
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 25,
              spreadRadius: 1,
              offset: const Offset(0, 18),
            ),
            // ✅ highlight atas (3D feel)
            const BoxShadow(
              color: Colors.white24,
              blurRadius: 10,
              offset: Offset(-5, -5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bankName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              cardNumber,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Balance',
              style: TextStyle(
                color: Color.fromARGB(179, 3, 1, 1),
                fontSize: 14,
              ),
            ),
            Text(
              balance,
              style: const TextStyle(
                color: Color.fromARGB(255, 5, 1, 1),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

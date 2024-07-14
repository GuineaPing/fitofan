import 'package:flutter/material.dart';
import '../../resources/colors.dart';

// Define the MatchInfo widget
class MatchInfo extends StatelessWidget {
  final String weight;
  final String gender;
  final String masterOf;

  const MatchInfo({
    super.key,
    required this.weight,
    required this.gender,
    required this.masterOf,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLabel(weight),
        const SizedBox(width: 8), // Add spacing between labels
        _buildLabel(gender),
        const SizedBox(width: 8), // Add spacing between labels
        _buildLabel(masterOf),
      ],
    );
  }

  // Helper method to build each label
  Widget _buildLabel(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.lighterGrey,
          fontSize: 11,
        ),
      ),
    );
  }
}

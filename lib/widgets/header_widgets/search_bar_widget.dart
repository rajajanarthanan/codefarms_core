import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 32, 30, 30),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: height * 0.25),
            fillColor: Colors.transparent,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: "Search...",
            hintStyle: const TextStyle(color: Colors.white54),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white70,
              size: 20,
            ),
          ),
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ),
    );
  }
}

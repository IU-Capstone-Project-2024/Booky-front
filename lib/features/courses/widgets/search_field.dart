import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffe1ecd7),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(28.0),
          ),
          suffixIcon: const Icon(Icons.search),
          hintText: 'Search by title...',
        ),
        controller: widget.controller,
      ),
    );
  }
}

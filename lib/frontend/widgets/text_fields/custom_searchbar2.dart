import 'package:flutter/material.dart';

class CustomSearchBar2 extends StatefulWidget {
  final Function onSearch;
  final Function onClose;

  const CustomSearchBar2({Key? key, required this.onSearch, required this.onClose}) : super(key: key);

  @override
  State<CustomSearchBar2> createState() => _CustomSearchBar2State();
}

class _CustomSearchBar2State extends State<CustomSearchBar2> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          // Three dashes icon
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.menu, color: Colors.grey, size: 16.0),
              const SizedBox(width: 4.0),
              const Icon(Icons.menu, color: Colors.grey, size: 16.0),
              const SizedBox(width: 4.0),
              Icon(Icons.menu, color: Colors.grey, size: 16.0),
            ],
          ),
          const SizedBox(width: 16.0),
          // Double vertical lines
          const SizedBox(
            width: 2.0,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          const SizedBox(width: 16.0),
          // Search field
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: '...بحث',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
              onSubmitted: (text) => widget.onSearch(text),
            ),
          ),
          const SizedBox(width: 16.0),
          // Search icon
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey),
            onPressed: () => widget.onSearch(_controller.text),
          ),
          // Close icon
          IconButton(
            icon: Icon(Icons.close, color: Colors.grey),
            onPressed: () => widget.onClose,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final Function onSearch;
  final Function onClose;

  CustomSearchBar({super.key, required this.onSearch, required this.onClose});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.grey),
            onPressed: () => widget.onSearch(controller.text),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '...بحث',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.menu, size: 16.0, color: Colors.grey),
              SizedBox(width: 5.0),
              VerticalDivider(
                thickness: 1.0,
                color: Colors.grey,
              ),
              SizedBox(width: 5.0),
              IconButton(
                icon: Icon(Icons.close, color: Colors.grey),
                onPressed: () {widget.onClose();},//widget.onClose,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
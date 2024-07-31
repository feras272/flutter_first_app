import 'package:flutter/material.dart';
import 'package:first_app/frontend/widgets/text_fields/search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
    'Kiwi',
    'Lemon',
  ];

  List<String> searchResults = [];

  void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Search Bar Tutorial'),
      ),
      body: Column(
        children: [
          //SearchBar(onQueryChanged: onQueryChanged),
          // SearchBar(
          //   onChanged: onQueryChanged,
          //   hintText: 'بحث...',
          // ),
          Container(
            child: Form(
              child: TextFormField(
                onChanged: onQueryChanged,
                decoration: const InputDecoration(
                  hintText: 'بحث...',
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResults[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

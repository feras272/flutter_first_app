import 'package:flutter/material.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key}); // required Function onQueryChanged ,

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  String query = '';

void onQueryChanged(String newQuery) {
	setState(() {
		query = newQuery;
	});
}

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.all(16),
			child: TextField(
        keyboardType: TextInputType.name,
				onChanged: onQueryChanged,
				decoration: const InputDecoration(
					labelText: 'Search',
					border: OutlineInputBorder(),
					prefixIcon: Icon(Icons.search),
				),
			),
		);
	}
}
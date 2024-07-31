import 'package:flutter/material.dart';

class SimpleSearchBar extends StatefulWidget {
  const SimpleSearchBar({super.key});

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              clipBehavior: Clip.none,
              shape: const StadiumBorder(),
              scrolledUnderElevation: 0.0,
              titleSpacing: 0.0,
              backgroundColor: Colors.transparent,
              floating:
                  true, // We can also uncomment this line and set `pinned` to true to see a pinned search bar.
              title: SearchAnchor.bar(
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<Widget>.generate(
                    5,
                    (int index) {
                      return ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text('Initial list item $index'),
                      );
                    },
                  );
                },
              ),
            ),
            // The listed items below are just for filling the screen
            // so we can see the scrolling effect.
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 100.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 100.0,
                        child: Card(
                          child: Center(child: Text('Card $index')),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 1000,
                  color: Colors.deepPurple.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

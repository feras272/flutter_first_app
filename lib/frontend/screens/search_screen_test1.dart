import 'package:first_app/frontend/widgets/search_bar/search_bar_test1.dart';
import 'package:flutter/material.dart';

class SerachScreenTest1 extends StatefulWidget {
  @override
  _SerachScreenTest1State createState() => _SerachScreenTest1State();
}

class _SerachScreenTest1State extends State<SerachScreenTest1> {
  void onTapStore() {
    setState(() {});
  }

  void onTapSearch() {
    setState(() {});
  }

  // PointerDownEvent onTapOutSideSearch() {
  //   return ;
  // }

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
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      // appBar: AppBar(
      //   title: const Text('Flutter Search Bar Tutorial'),
      // ),
      body: Column(
        children: [
          SearchBarTest1(
            onTypingChanged: (val) => onQueryChanged(val),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  color: const Color.fromARGB(255, 240, 240, 242),
                  child: index == 0
                      ? Text(
                          'نتائج البحث',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 123, 123, 123).withOpacity(0.9),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        )
                      : GestureDetector(
                          onTap: onTapSearch,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 28.0,
                                    ),
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'تموينات القحطاني',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color:
                                                Color.fromARGB(200, 35, 35, 35),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '2 mi.',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(200, 35, 35, 35),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              index == searchResults.length - 1
                                  ? const SizedBox(
                                      height: 4.0,
                                    )
                                  : const Divider(
                                      height: 10.0,
                                      thickness: 1,
                                      color: Color.fromARGB(150, 210, 210, 210),
                                      indent: 32.0,
                                      endIndent: 32.0,
                                    ),
                            ],
                          ),
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  //, required this.controller

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var allItems = List.generate(50, (index) => 'item $index');
  var item = [];
  var searchHistory = [];
  final TextEditingController searchController = TextEditingController();

  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 70, right: 16),
        child: SearchBarTheme(
          data: SearchBarThemeData(
            side: MaterialStateProperty.all(BorderSide(color: const Color.fromARGB(255, 205, 205, 205), width: 0.2)),
            elevation: MaterialStateProperty.all(2),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white,
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.black),
            ),

          ),
          child: SearchBar(
              
            // ... other properties
            //hintText: '...بحث',
            //leading: Text('Feras XXX', textDirection: TextDirection.rtl,),
          ),
        ),
      ),
    );
  }
}
















// '...بحث'

/*
Positioned(
  top: 70,
  left: 16,
  right: 16,
)
*/
  /*
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

    @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }
  */




/*
              child: Theme(
                data: Theme.of(context).copyWith(
                  inputDecorationTheme: const InputDecorationTheme(
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                  ),
                ),
                child: const SearchBar(
                    // ... other properties
                    ),
              ),
*/
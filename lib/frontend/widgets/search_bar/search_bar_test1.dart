import 'package:flutter/material.dart';

class SearchBarTest1 extends StatefulWidget {
  Function? onTapSearch;
  Function(PointerDownEvent)? onTapOutSideSearch;
  
  final Function(String val)? onTypingChanged;

  SearchBarTest1({super.key, this.onTapSearch, this.onTapOutSideSearch, this.onTypingChanged});

  @override
  _SearchBarTest1State createState() => _SearchBarTest1State();
}

class _SearchBarTest1State extends State<SearchBarTest1> {
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  void onSearchIconPreesed() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 70, left: 16),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        
        padding: const EdgeInsets.all(4),
        child: TextFormField(
          onTap: () => widget.onTapSearch,
          onTapOutside: widget.onTapOutSideSearch,
          //textAlign: TextAlign.end,
          textAlignVertical: TextAlignVertical.center,
          textDirection: TextDirection.rtl,
          onChanged: widget.onTypingChanged, //onQueryChanged,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              prefixIcon: Container(
                width: 100, //MediaQuery.of(context).size.height * 0.10,
                child: Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      ),
                      // const VerticalDivider(
                      //   width: 20,
                      //   thickness: 5,
                      //   indent: 0,
                      //   endIndent: 0,
                      //   color: Colors.black,
                      // ),
                      // const VerticalDivider(
                      //   width: 0.5,
                      //   color: Colors.black,
                      //   thickness: 1,
                      // ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
              ),
              hintText: 'بحث...',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              hintTextDirection: TextDirection.rtl,
              //labelText: 'Search',
              border: InputBorder.none
              // border: const InputBo(
              //   borderSide: BorderSide(
              //     width: 0.2,
              //     color: Color.fromARGB(255, 222, 222, 222),
              //   ),
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(16.0),
              //   ),
              //   gapPadding: 4.0,
              // ),
              //prefixIcon: Icon(Icons.search),
              // suffixIcon: IconButton(
              //   onPressed: onSearchIconPreesed,
              //   icon: const Icon(Icons.search),
              // ),
              ),
        ),
      ),
    );
  }
}

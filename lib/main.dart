import 'package:first_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:first_app/frontend/screens/search_screen_test1.dart';

void main() {
  runApp(
    AppEntry(),
  );
}

class AppEntry extends StatelessWidget {
  AppEntry({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Bar Tutorial',
      home: SerachScreenTest1(), //LocalizationApp() //const HomePage(),//SearchScreen(),
    );
  }
}

void showSearchResults(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.75, // Adjust height as needed
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Arrow icon and name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text('Name'),
                ],
              ),
              SizedBox(height: 16.0),
              // Text showing miles
              Text('X miles away'),
              // ... Add your custom search result elements here
            ],
          ),
        ),
      );
    },
  );
}

class LocalizationApp extends StatelessWidget {
  const LocalizationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'ابحث...', hintTextDirection: TextDirection.rtl),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Bar Tutorial',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              TextFormField(
                //readOnly: true,
                style: const TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '+966 (51) 234 5678',
                  hintStyle: TextStyle(
                    fontSize: 24,
                  ),
                ),
                //controller: phoneController,
              ),
            ],
          ),
        ),
      ), //SearchScreen(),//HomePage(),//HomeScreen(),
    );
  }
}



/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Bar Tutorial',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              TextFormField(
                //readOnly: true,
                style: const TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '+966 (51) 234 5678',
                  hintStyle: TextStyle(
                    fontSize: 24,
                  ),
                ),
                //controller: phoneController,
              ),
            ],
          ),
        ),
      ), //SearchScreen(),//HomePage(),//HomeScreen(),
    );
  }
}
*/

// supportedLocales: S.delegate.supportedLocales,
// localizationsDelegates: const [
//   S.delegate,
//   GlobalMaterialLocalizations.delegate,
//   GlobalWidgetsLocalizations.delegate,
//   GlobalCupertinoLocalizations.delegate,
// ],
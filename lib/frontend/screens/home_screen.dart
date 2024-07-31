import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:first_app/frontend/widgets/text_fields/numericpad.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String phoneNumber = "", data = "";
  late TextEditingController phoneController;
  final GlobalKey<FormState> _phoneFormfield = GlobalKey<FormState>();

  final List<TextInputFormatter> textInputFormatter = [
    PhoneInputFormatter(allowEndlessPhone: false, defaultCountryCode: 'SA')
  ];
  TextEditingController _textController = TextEditingController();

  void _validate() {
    _phoneFormfield.currentState?.validate();
  }

  @override
  void initState() {
    super.initState();
    //phoneController = TextEditingController();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    _textController.text = phoneNumber;
  }

  void _navigateToLoginScreen(String userId) {
    //Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainScreen(userId: userId)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 28.0,
                    ),
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    // height: 100,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              //double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.0),
                  topRight: Radius.circular(80.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "أدخل رقم جوالك",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.center,

                      // showCursor: true,
                      // readOnly: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '+966 (51) 234 5678',
                        hintStyle: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      inputFormatters: textInputFormatter,
                      controller: _textController,
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                    color: Color.fromARGB(255, 216, 216, 216),
                  ),
                  NumericPad(
                    onNumberSelected: (value) {
                      setState(() {
                        if (value != -1) {
                          phoneNumber = phoneNumber + value.toString();
                          //phoneController = TextEditingController();
                          _textController.text = phoneNumber;
                        } else {
                          phoneNumber =
                              phoneNumber.substring(0, phoneNumber.length - 1);
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 55.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            )),
                        onPressed: () {},
                        child: const Text(
                          'تحقق',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'تحتاج مساعدة؟',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

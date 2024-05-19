import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Account1 extends StatefulWidget {
  const Account1({super.key});

  @override
  State<Account1> createState() => _Account1State();
}

class _Account1State extends State<Account1> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenSize.width * 0.02,
                  screenSize.height * 0.05,
                  screenSize.width * 0.02,
                  0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/UPMlogo.jpg',
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Welcome !',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.42,
                      width: screenSize.width * 1.0,
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          screenSize.width * 0.02,
                          screenSize.height * 0.03,
                          screenSize.width * 0.02,
                          0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        'Enter your mobile number to activate your account.',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.055,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.info_outline_rounded,
                                  size: screenSize.width * 0.06,
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.02),
                            Row(
                              children: [
                                CountryCodePicker(
                                  onChanged: print,
                                  initialSelection: 'MY',
                                  favorite: ['+60', 'FR'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,
                                  alignLeft: false,
                                ),
                                Container(
                                  width: screenSize.width * 0.6,
                                  child: TextFormField(
                                    key: Key("email"),
                                    showCursor: true,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CheckboxListTile(
                              value: isChecked,
                              activeColor: Colors.blue,
                              title: Text(
                                  'I agree to the terms & conditions',
                                style: TextStyle(
                                  fontSize: screenSize.width * 0.02,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (newChecked) {
                                setState(() {
                                  isChecked = newChecked;
                                });
                              },
                            ),
                            ElevatedButton(
                              key: Key("activate"),
                              onPressed: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/account2');
                                });
                              },
                              child: Text(
                                'Get Activation Code',
                                style: TextStyle(
                                    fontSize: screenSize.width * 0.05,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.2),
                    Column(
                      children: [
                        Text(
                          'Disclaimer | Privacy Statement',
                          style: TextStyle(
                              fontSize: screenSize.width * 0.040,
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        Text(
                          'Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.045,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

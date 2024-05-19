import 'package:flutter/material.dart';

class Account2 extends StatefulWidget {
  const Account2({super.key});

  @override
  State<Account2> createState() => _Account2State();
}

class _Account2State extends State<Account2> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SafeArea(
                child: Padding(
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
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                              color: Colors.grey.shade600
                            ),
                          ],
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
                                          'Enter the activation code you received via SMS.',
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      screenSize.height * 0.025,
                                      0,
                                      0,
                                    ),
                                    width: screenSize.width * 0.9,
                                    height: screenSize.height * 0.1,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0.8,
                                        color: Colors.black
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'OTP',
                                      style: TextStyle(
                                        fontSize: screenSize.width * 0.07,
                                        fontWeight: FontWeight.w300
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '0/6',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.035,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenSize.height * 0.002),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: "Didn't receive?",
                                      style: TextStyle(
                                        fontSize: screenSize.width * 0.045,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ' Tap here',
                                          style: TextStyle(
                                              fontSize: screenSize.width * 0.045,
                                            color: Colors.blue,
                                            decoration: TextDecoration.underline
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                key: Key("otpButton"),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/dashboard');
                                },
                                child: Text(
                                  'Activate',
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.05,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.2),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Disclaimer | Privacy Statement',
                            style: TextStyle(
                                fontSize: screenSize.width * 0.040,
                                color: Colors.blue,
                                decoration: TextDecoration.underline
                            ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

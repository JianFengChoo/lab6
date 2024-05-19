import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Engineer2 extends StatefulWidget {
  const Engineer2({super.key});

  @override
  State<Engineer2> createState() => _Engineer2State();
}

class _Engineer2State extends State<Engineer2> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text(
            'Factory 1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenSize.width * 0.08,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Invitation',
                style: TextStyle(
                  fontSize: screenSize.width * 0.09,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Invite users',
                style: TextStyle(
                  fontSize: screenSize.width * 0.05,
                  fontWeight: FontWeight.w400
                ),
              ),
              Row(
                children: [
                  Text(
                    "Owner's Name",
                    style: TextStyle(
                        fontSize: screenSize.width * 0.065,
                        fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1,
                child: TextFormField(
                  showCursor: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Type Here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Owner's Phone Number",
                    style: TextStyle(
                      fontSize: screenSize.width * 0.065,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
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
                    width: MediaQuery.sizeOf(context).width * 0.62,
                    child: TextFormField(
                      showCursor: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter your phone number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                key: Key("submitButton"),
                onPressed: () {
                  Navigator.pushNamed(context, '/engineer1');
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.08,
                    fontWeight: FontWeight.w400
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

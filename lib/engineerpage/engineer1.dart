import 'package:flutter/material.dart';

class Engineer extends StatefulWidget {
  const Engineer({super.key});

  @override
  State<Engineer> createState() => _EngineerState();
}

class _EngineerState extends State<Engineer> {
  int index = 0;
  Color f1 = Colors.blue;
  Color f2 = Colors.grey;
  Color f3 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
            'Factory 1',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenSize.width * 0.08,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed:() {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                height: screenSize.height * 0.64,
                width: screenSize.width * 0.97,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1.0,
                              color: Colors.grey.shade600,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                              child: Text(
                                'Ben',
                                style: TextStyle(
                                  fontSize: screenSize.width * 0.06,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                    size: screenSize.width * 0.03,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '+60109219938',
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1.0,
                              color: Colors.grey.shade600,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                              child: Text(
                                'Testing 1',
                                style: TextStyle(
                                    fontSize: screenSize.width * 0.06,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                    size: screenSize.width * 0.03,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '+601234567891',
                                    style: TextStyle(
                                        fontSize: screenSize.width * 0.05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: screenSize.height * 0.15,
                        width: screenSize.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1.0,
                              color: Colors.grey.shade600,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                              child: Text(
                                'Hello',
                                style: TextStyle(
                                    fontSize: screenSize.width * 0.06,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                    size: screenSize.width * 0.03,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '+60123456789',
                                    style: TextStyle(
                                        fontSize: screenSize.width * 0.05,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            key: Key("addButton"),
                            onPressed: () {
                              Navigator.pushNamed(context, '/engineer2');
                            },
                            child: Icon(
                              Icons.add,
                              size: screenSize.width * 0.09,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          f1 = Colors.blue;
                          f2 = Colors.grey;
                          f3 = Colors.grey;
                          Navigator.pushNamed(context, '/engineer1');
                        });
                      },
                      child: Container(
                        width: screenSize.width * 0.4,
                        height: screenSize.height * 0.2,
                        margin: EdgeInsets.fromLTRB(20, 5, 15, 0),
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: f1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.factory,
                                size: screenSize.width * 0.1,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Factory 1',
                              style: TextStyle(
                                  fontSize: screenSize.width * 0.065,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          f1 = Colors.grey;
                          f2 = Colors.blue;
                          f3 = Colors.grey;
                        });
                      },
                      child: Container(
                        width: screenSize.width * 0.4,
                        height: screenSize.height * 0.2,
                        margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: f2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.factory,
                                size: screenSize.width * 0.1,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Factory 2',
                              style: TextStyle(
                                  fontSize:screenSize.width * 0.065,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          f1 = Colors.grey;
                          f2 = Colors.grey;
                          f3 = Colors.blue;
                        });
                      },
                      child: Container(
                        width: screenSize.width * 0.4,
                        height: screenSize.height * 0.2,
                        margin: EdgeInsets.fromLTRB(15, 5, 20, 0),
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: f3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.factory,
                                size: screenSize.width * 0.1,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Factory 3',
                              style: TextStyle(
                                  fontSize: screenSize.width * 0.065,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: screenSize.height * 0.06,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
            switch(index) {
              case 0:
                Navigator.pushNamed(context, '/engineer1');
                break;
              case 1:
                Navigator.pushNamed(context, '/dashboard');
                break;
              case 2:
                Navigator.pushNamed(context, '/setting');
            }
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.account_box_outlined),
            selectedIcon: Icon(Icons.account_box_rounded),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}

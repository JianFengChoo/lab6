import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int index = 2;
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
              fontSize: 30
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
                      offset: Offset(1, 1),
                      color: Colors.grey,
                      blurRadius: 30,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                height: screenSize.height * 0.64,
                width: screenSize.width * 0.97,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10,30,5,0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                              'Minimum threshold',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.07,
                              fontWeight: FontWeight.w800
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                              Icons.info_outline,
                            size: screenSize.width * 0.06,
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              size: screenSize.width * 0.06,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenSize.width * 0.45,
                            height: screenSize.height * 0.25,
                            margin: EdgeInsets.fromLTRB(3, 5, 3, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'Steam Pressure',
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.06,
                                    fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: screenSize.width * 0.4,
                                  height: screenSize.height * 0.08,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 25),
                                      Text(
                                        '29',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.06,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 25),
                                      VerticalDivider(
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'bar',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.04,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.45,
                            height: screenSize.height * 0.25,
                            margin: EdgeInsets.fromLTRB(3, 5, 3, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'Steam Flow',
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.06,
                                      fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: screenSize.width * 0.4,
                                  height: screenSize.height * 0.08,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 25),
                                      Text(
                                        '22',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.06,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 25),
                                      VerticalDivider(
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'T/H',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.04,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenSize.width * 0.45,
                            height: screenSize.height * 0.25,
                            margin: EdgeInsets.fromLTRB(3, 5, 3, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'Water Level',
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.06,
                                      fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: screenSize.width * 0.4,
                                  height: screenSize.height * 0.08,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 25),
                                      Text(
                                        '53',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.06,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 25),
                                      VerticalDivider(
                                        color: Colors.black,
                                      ),
                                      Text(
                                        '%',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.04,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.45,
                            height: screenSize.height * 0.25,
                            margin: EdgeInsets.fromLTRB(3, 5, 3, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'Power Frequency',
                                  style: TextStyle(
                                      fontSize: screenSize.width * 0.06,
                                      fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: screenSize.width * 0.4,
                                  height: screenSize.height * 0.08,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 25),
                                      Text(
                                        '48',
                                        style: TextStyle(
                                          fontSize: screenSize.width * 0.06,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(width: 25),
                                      VerticalDivider(
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Hz',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.04,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                          Navigator.pushNamed(context, '/setting');
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
          this.index = index;
          setState(() {
            switch(index) {
              case 0:
                Navigator.pushNamed(context, '/engineer1');
                break;
              case 1:
                Navigator.pushNamed(context, '/dashboard');
                break;
              case 2:
                Navigator.pushNamed(context, '/setting');
                break;
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

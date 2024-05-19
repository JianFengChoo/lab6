import 'package:flutter/material.dart';
import 'package:lab5_part2/dashboardpage/dashboard.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Dashboard2 extends StatefulWidget {
  Dashboard2({super.key});

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  int index = 1;
  Color f1 = Colors.grey;
  Color f2 = Colors.blue;
  Color f3 = Colors.grey;


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
            'Factory 2',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenSize.width * 0.08,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
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
                      blurRadius: 3,
                      spreadRadius: 1.0,
                      color: Colors.grey.shade600,
                    ),
                  ],
                ),
                height: screenSize.height * 0.64,
                width: screenSize.width * 0.97,
                child: Column(
                  children: [
                    Text(
                      '1549.7kW',
                      style: TextStyle(
                          fontSize: screenSize.width * 0.065,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: screenSize.width * 0.45,
                          height: screenSize.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SfRadialGauge(
                            enableLoadingAnimation: true,
                            animationDuration: 4000,
                            title: GaugeTitle(
                              text: 'Speed Measure',
                              textStyle: TextStyle(
                                  fontSize: screenSize.width * 0.06,
                                  color: Colors.grey[700]
                              ),
                            ),
                            axes: [
                              RadialAxis(
                                startAngle: 180,
                                endAngle: 0,
                                interval: 50,
                                axisLineStyle: AxisLineStyle(
                                    thickness: 0.3,
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    color: Colors.grey[300]
                                ),
                                showLabels: false,
                                pointers: [
                                  MarkerPointer(
                                    value: 30,
                                    enableDragging: true,
                                    enableAnimation: true,
                                    markerWidth: 20,
                                    markerHeight: 10,
                                    markerOffset: -15,
                                    color: Colors.grey[300],
                                  ),
                                  RangePointer(
                                    value: 34.19,
                                    width: 24,
                                    color: Colors.green,
                                  ),
                                ],
                                annotations: [
                                  GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0.5,
                                    widget: Text.rich(
                                      TextSpan(
                                        text: '34.19',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.075,
                                            fontWeight: FontWeight.bold
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'bar',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenSize.width * 0.45,
                          height: screenSize.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SfRadialGauge(
                            enableLoadingAnimation: true,
                            animationDuration: 4000,
                            title: GaugeTitle(
                              text: 'Steam Flow',
                              textStyle: TextStyle(
                                  fontSize: screenSize.width * 0.06,
                                  color: Colors.grey[700]
                              ),
                            ),
                            axes: [
                              RadialAxis(
                                startAngle: 180,
                                endAngle: 0,
                                interval: 50,
                                axisLineStyle: AxisLineStyle(
                                    thickness: 0.3,
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    color: Colors.grey[300]
                                ),
                                showLabels: false,
                                pointers: [
                                  MarkerPointer(
                                    value: 30,
                                    enableDragging: true,
                                    enableAnimation: true,
                                    markerWidth: 20,
                                    markerHeight: 10,
                                    markerOffset: -15,
                                    color: Colors.grey[300],
                                  ),
                                  RangePointer(
                                    value: 22.82,
                                    width: 24,
                                    color: Colors.red,
                                  ),
                                ],
                                annotations: [
                                  GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0.5,
                                    widget: Text.rich(
                                      TextSpan(
                                        text: '22.82',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.075,
                                            fontWeight: FontWeight.bold
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'T/H',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: screenSize.width * 0.45,
                          height: screenSize.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SfRadialGauge(
                            enableLoadingAnimation: true,
                            animationDuration: 4000,
                            title: GaugeTitle(
                              text: 'Water Level',
                              textStyle: TextStyle(
                                  fontSize: screenSize.width * 0.06,
                                  color: Colors.grey[700]
                              ),
                            ),
                            axes: [
                              RadialAxis(
                                startAngle: 180,
                                endAngle: 0,
                                interval: 50,
                                axisLineStyle: AxisLineStyle(
                                    thickness: 0.3,
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    color: Colors.grey[300]
                                ),
                                showLabels: false,
                                pointers: [
                                  MarkerPointer(
                                    value: 52,
                                    enableDragging: true,
                                    enableAnimation: true,
                                    markerWidth: 20,
                                    markerHeight: 10,
                                    markerOffset: -15,
                                    color: Colors.grey[300],
                                  ),
                                  RangePointer(
                                    value: 55.41,
                                    width: 24,
                                    color: Colors.green,
                                  ),
                                ],
                                annotations: [
                                  GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0.5,
                                    widget: Text.rich(
                                      TextSpan(
                                        text: '55.41',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.075,
                                            fontWeight: FontWeight.bold
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '%',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenSize.width * 0.45,
                          height: screenSize.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: SfRadialGauge(
                            enableLoadingAnimation: true,
                            animationDuration: 4000,
                            title: GaugeTitle(
                              text: 'Power Frequency',
                              textStyle: TextStyle(
                                  fontSize: screenSize.width * 0.06,
                                  color: Colors.grey[700]
                              ),
                            ),
                            axes: [
                              RadialAxis(
                                startAngle: 180,
                                endAngle: 0,
                                interval: 50,
                                axisLineStyle: AxisLineStyle(
                                    thickness: 0.3,
                                    thicknessUnit: GaugeSizeUnit.factor,
                                    color: Colors.grey[300]
                                ),
                                showLabels: false,
                                pointers: [
                                  MarkerPointer(
                                    value: 48,
                                    enableDragging: true,
                                    enableAnimation: true,
                                    markerWidth: 20,
                                    markerHeight: 10,
                                    markerOffset: -15,
                                    color: Colors.grey[300],
                                  ),
                                  RangePointer(
                                    value: 50.08,
                                    width: 24,
                                    color: Colors.green,
                                  ),
                                ],
                                annotations: [
                                  GaugeAnnotation(
                                    angle: 90,
                                    positionFactor: 0.5,
                                    widget: Text.rich(
                                      TextSpan(
                                        text: '50.08',
                                        style: TextStyle(
                                            fontSize: screenSize.width * 0.075,
                                            fontWeight: FontWeight.bold
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Hz',
                                            style: TextStyle(
                                              fontSize: screenSize.width * 0.05,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      '2024-04-26 13:45:25',
                      style: TextStyle(
                          fontSize: screenSize.width * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      key: Key("factory1"),
                      onTap: () {
                        setState(() {
                          f1 = Colors.blue;
                          f2 = Colors.grey;
                          f3 = Colors.grey;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashBoard(),
                            ),
                          );
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
                      key: Key("factory2"),
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
                      key: Key("factory3"),
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
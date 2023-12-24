import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  DateTime _fromDate = DateTime.now();
  DateTime _toDate = DateTime.now();
  //==================================================
  // void addUserToList(name, email) {
  //   setState(() {
  //     userList.add(User(name: name, email: email));
  //   });
  // }
  //===================================================
  void _getFromDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(3000))
        .then((value) {
      setState(() {
        _fromDate = value!;
      });
    });
  }

  void _getToDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(3000))
        .then((value) {
      setState(() {
        _toDate = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            //upper part container
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              height: size.height.h / 1.5,
              width: size.width.w / 5,
              decoration: BoxDecoration(
                //middle container design
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
                //design and position of shadow of middle container
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0.0, -3.0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  //left side part of the upper container
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topCenter,
                      //inside the left part
                      child: Row(
                        children: [
                          //left container left side part
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Column(children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(200),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 2, color: Colors.grey)),
                                  child: const Icon(
                                    Icons.person,
                                    size: 250,
                                    color: Colors.black54,
                                  ),
                                ),
                                //button for editing profile
                                Container(
                                  height: size.height.h / 15,
                                  width: size.width.w / 10,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 5, top: 10),
                                  child: ElevatedButton.icon(
                                    icon: const Icon(
                                      Icons.edit_document,
                                      color: Colors.black87,
                                      size: 30,
                                    ),
                                    label: const Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return Colors.blue;
                                          }
                                          return Colors.white;
                                        },
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                //button for change password
                                Container(
                                  height: size.height.h / 15,
                                  width: size.width.w / 10,
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 5),
                                  child: ElevatedButton.icon(
                                    icon: const Icon(
                                      Icons.password_rounded,
                                      color: Colors.black87,
                                      size: 30,
                                    ),
                                    label: const Text(
                                      "Change Password",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return Colors.blue;
                                          }
                                          return Colors.white;
                                        },
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ]),
                            ),
                          ),
                          //left container right side part
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.bottomCenter,
                              child: const Column(children: [
                                SizedBox(
                                  height: 50,
                                  width: 300,
                                  child: Text(
                                    "My Name Is ABCDEF",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 300,
                                  child: Text(
                                    "ID: 12345678",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 300,
                                  child: Text(
                                    "Designation: Executive IT",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 300,
                                  child: Text(
                                    "Role: Admin",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 300,
                                  child: Text(
                                    "Mail: sheikh@labaidgroup.com",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 300,
                                  child: Text(
                                    "Mobile: 01766661234",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //right part of the upper container
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      alignment: Alignment.bottomCenter,
                      child: //chart part
                          SfCircularChart(
                        title: const ChartTitle(
                          text: "IT Support",
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        legend: const Legend(
                            isVisible: true,
                            overflowMode: LegendItemOverflowMode.wrap),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: <CircularSeries>[
                          RadialBarSeries<ChartData, String>(
                            dataSource: getChartData(),
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            enableTooltip: true,
                            maximumValue: 100,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              width: size.width.w / 5,
              decoration: BoxDecoration(
                //middle container design
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
                //design and position of shadow of middle container
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0.0, -3.0),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  children: [
                    const Text(
                      "From",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.grey)),
                      height: 40,
                      width: 150,
                      child: Text(
                        _fromDate.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          _getFromDate();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.date_range_rounded,
                            size: 30,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "To",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.grey)),
                      height: 40,
                      width: 150,
                      child: Text(
                        _toDate.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          _getToDate();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.date_range_rounded,
                            size: 30,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          height: 40,
                          width: 130,
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.refresh,
                                size: 30,
                                color: Colors.black87,
                              ),
                              Text(
                                "Refresh",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      DataTable(columns: const [
                        DataColumn(
                            label: Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Two",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Three",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Four",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Five",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Six",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Seven",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Eight",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Nine",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        DataColumn(
                            label: Text(
                          "Ten",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                      ], rows: const [
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                          DataCell(Text("0001")),
                        ]),
                      ])
                    ],
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}

//pie chart class
class ChartData {
  final String x;
  final int y;
  ChartData(this.x, this.y);
}

//pie chart data
dynamic getChartData() {
  final List<ChartData> chartdata = [
    ChartData("Assigned", 90),
    ChartData("Solved", 20),
    ChartData("Pending", 80),
    ChartData("Cancled", 80),
  ];
  return chartdata;
}

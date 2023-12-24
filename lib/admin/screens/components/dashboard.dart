import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  var inputText = "";
  //user search part
  Future<void> _searchUser() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('User Search'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20,
                              color: Color(0xFF7C4DFF),
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: Color(0xFF7C4DFF),
                              ),
                              hintText: "Enter User ID",
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                          onChanged: (val) {
                            setState(() {
                              inputText = val.toLowerCase();
                              print(inputText);
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancle',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Size ScreenSize = MediaQuery.of(context).size;
    if (ScreenSize.width >= 1300) {
      return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(20),
                          height: ScreenSize.height / 3,
                          width: ScreenSize.width / 4.7,
                          decoration: const BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: const Column(
                            children: [
                              Text(
                                "Issue Raised",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    size: 100,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(20),
                          height: ScreenSize.height / 3,
                          width: ScreenSize.width / 4.7,
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: const Column(
                            children: [
                              Text(
                                "Issue Solved",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 100,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(20),
                          height: ScreenSize.height / 3,
                          width: ScreenSize.width / 4.7,
                          decoration: const BoxDecoration(
                              color: Colors.indigo,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: const Column(
                            children: [
                              Text(
                                "Issue Stalled",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.engineering_rounded,
                                    size: 100,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(20),
                          height: ScreenSize.height / 3,
                          width: ScreenSize.width / 4.7,
                          decoration: const BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: const Column(
                            children: [
                              Text(
                                "On Process",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 100,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(20),
                      height: ScreenSize.height / 3,
                      width: 170.w,
                      child: SfCartesianChart(
                        backgroundColor: Colors.blue[100],
                        borderColor: Colors.black38,
                        title: const ChartTitle(
                          text: "Last 30 Days Issue Solved",
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        primaryXAxis: const CategoryAxis(),
                        primaryYAxis: const NumericAxis(),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: <CartesianSeries>[
                          ColumnSeries<GraphData, String>(
                            dataSource: getColumnData(),
                            xValueMapper: (GraphData sales, _) => sales.x,
                            yValueMapper: (GraphData sales, _) => sales.y,
                            enableTooltip: true,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        //profile part
                        Card(
                          color: Colors.cyanAccent.shade100,
                          child: InkWell(
                            splashColor: Colors.blue,
                            onTap: () {
                              _searchUser();
                            },
                            child: Container(
                              height: ScreenSize.height / 4,
                              width: 250,
                              child: const Column(children: <Widget>[
                                Icon(
                                  Icons.person_outline_rounded,
                                  size: 100,
                                  color: Colors.black87,
                                ),
                                Text(
                                  "User Name",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text("User ID")
                              ]),
                            ),
                          ),
                        ),

                        //chart part
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
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
    //for mobile view
    else {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Text("Mobile"),
      );
    }
  }
}

//graph data class
class GraphData {
  String x;
  double y;

  GraphData(this.x, this.y);
}

//value for the graph
dynamic getColumnData() {
  final List<GraphData> columnData = <GraphData>[
    GraphData("01", 100),
    GraphData("02", 200),
    GraphData("03", 300),
    GraphData("04", 700),
    GraphData("05", 500),
    GraphData("06", 100),
    GraphData("07", 1100),
    GraphData("08", 100),
    GraphData("09", 100),
    GraphData("10", 200),
    GraphData("11", 300),
    GraphData("12", 700),
    GraphData("13", 500),
    GraphData("14", 100),
    GraphData("15", 1100),
    GraphData("16", 100),
    GraphData("17", 100),
    GraphData("18", 200),
    GraphData("19", 300),
    GraphData("20", 700),
    GraphData("21", 500),
    GraphData("22", 100),
    GraphData("23", 1100),
    GraphData("24", 100),
    GraphData("25", 100),
    GraphData("26", 200),
    GraphData("27", 300),
    GraphData("28", 700),
    GraphData("29", 500),
    GraphData("30", 100),
  ];
  return columnData;
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

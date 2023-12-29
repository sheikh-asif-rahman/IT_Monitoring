import 'package:flutter/material.dart';
import 'package:labaid_project/api_request.dart';

class TestAPI extends StatefulWidget {
  const TestAPI({super.key});

  @override
  State<TestAPI> createState() => _TestAPIState();
}

class _TestAPIState extends State<TestAPI> {
  user userlist = user();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List>(
            future: userlist.getAllUser(),
            builder: (context, snapshot) {
              print(snapshot);
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, i) {
                    return Card(
                        child: ListTile(
                      title: Text(snapshot.data![i]['username']),
                      subtitle: Text(snapshot.data![i]['mail']),
                    ));
                  },
                );
              } else {
                return Center(
                  child: Text("No Data Found"),
                );
              }
            }),
      ),
    );
  }
}

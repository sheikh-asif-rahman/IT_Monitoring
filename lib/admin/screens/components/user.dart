import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool obscText = false;
  List<Map<String, dynamic>> userAccessList = [
    {"title": "Admin", "isChecked": false},
  ];
  List<Map<String, dynamic>> facilityAccessList = [
    {"title": "Labaid Dhanmondi", "isChecked": false}
  ];
  List<Map<String, dynamic>> UserSpecialRights = [
    {"title": "Can Edit", "isChecked": false},
    {"title": "Can Delete", "isChecked": false},
    {"title": "Can Cancle", "isChecked": false},
  ];
  List<Map<String, dynamic>> ActiveInactive = [
    {"title": "Deactived", "isChecked": false}
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   for (int i = 0; i < 20; i++) {
  //     dataList.add({"title": "Item $i", "isChecked": false});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              height: size.height.h,
              width: size.width.w / 4,
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
                  //left side expand part
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "Information",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 250,
                                height: 40,
                                margin: const EdgeInsets.only(
                                    left: 20, right: 10, top: 10, bottom: 10),
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey)),
                                child: TextField(
                                  decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.orange,
                                      ),
                                      hintText: "Enter User ID",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none),
                                  onChanged: (val) {},
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.pressed)) {
                                        return Colors.blue;
                                      }
                                      return Colors.white;
                                    },
                                  ),
                                ),
                                //on press response code
                                onPressed: () {},
                                child: const Text(
                                  'Done',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: size.height.h / 3,
                            width: size.width.w / 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                color: Colors.white,
                                border:
                                    Border.all(width: 2, color: Colors.grey)),
                            child: const Icon(
                              Icons.person,
                              size: 150,
                              color: Colors.black54,
                            ),
                          ),
                          //Name Box
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                  hintText: "Employee Name",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          //ID Box
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.generating_tokens,
                                    color: Colors.black,
                                  ),
                                  hintText: "Employee ID",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          //Designation box
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.grade,
                                    color: Colors.black,
                                  ),
                                  hintText: "Designation",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          //mobile Box
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.phone_android,
                                    color: Colors.black,
                                  ),
                                  hintText: "Mobile",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),

                          //Mail Box
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.mail,
                                    color: Colors.black,
                                  ),
                                  hintText: "Employee Mail",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          //Address
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                  ),
                                  hintText: "Address",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          //Password Box
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade100,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              obscureText: !obscText,
                              cursorColor: Colors.blue,
                              // controller: ,
                              decoration: InputDecoration(
                                  icon: const Icon(
                                    Icons.vpn_key,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        //if the obscText is false, then it will become true,
                                        // if again pressed, then the true will become false again.
                                        obscText = !obscText;
                                      });
                                      FocusScope.of(context).unfocus();
                                    },
                                    icon: Icon(
                                      obscText
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color:
                                          obscText ? Colors.blue : Colors.grey,
                                    ),
                                  ),
                                  hintText: "Password",
                                  labelStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  //middle side expand part
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "Rules And Permission",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),

                          //user access title and add delete button part
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 70),
                                child: const Text(
                                  "User Access",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple),
                                ),
                              ),
                              //container for Add button
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                  ),
                                  //on press response code
                                  onPressed: () {
                                    setState(() {
                                      userAccessList.add({
                                        "title": "non-admin",
                                        "isChecked": false
                                      });
                                    });
                                  },
                                  child: const Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                              //container for Delete button
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                  ),
                                  //on press response code
                                  onPressed: () {},
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //user access checkbox part
                          SingleChildScrollView(
                            child: Container(
                                height: size.height.h / 2.5,
                                width: size.width.w / 15,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: userAccessList.length,
                                  itemBuilder: (context, index) =>
                                      CheckboxListTile(
                                    value: userAccessList[index]["isChecked"],
                                    onChanged: (value) {
                                      setState(() {
                                        userAccessList[index]["isChecked"] =
                                            value!;
                                      });
                                    },
                                    title: Text(
                                      userAccessList[index]["title"],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ),
                          //Facility title and add delete button part
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 110),
                                child: const Text(
                                  "Facility",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple),
                                ),
                              ),
                              //container for Add button
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                  ),
                                  //on press response code
                                  onPressed: () {},
                                  child: const Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                              //container for Delete button
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                  ),
                                  //on press response code
                                  onPressed: () {},
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //facility tagging checkbox part
                          SingleChildScrollView(
                            child: Container(
                                height: size.height.h / 2.5,
                                width: size.width.w / 15,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: facilityAccessList.length,
                                  itemBuilder: (context, index) =>
                                      CheckboxListTile(
                                    value: facilityAccessList[index]
                                        ["isChecked"],
                                    onChanged: (value) {
                                      setState(() {
                                        facilityAccessList[index]["isChecked"] =
                                            value!;
                                      });
                                    },
                                    title: Text(
                                      facilityAccessList[index]["title"],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  //right side expand part
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "Special Rights",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),

                          //user access title and add delete button part
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 10, right: 70),
                            child: const Text(
                              "User Special Rights",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                          ),

                          //user access checkbox part
                          SingleChildScrollView(
                            child: Container(
                                height: size.height.h / 2.5,
                                width: size.width.w / 15,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey)),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: UserSpecialRights.length,
                                  itemBuilder: (context, index) =>
                                      CheckboxListTile(
                                    value: UserSpecialRights[index]
                                        ["isChecked"],
                                    onChanged: (value) {
                                      setState(() {
                                        UserSpecialRights[index]["isChecked"] =
                                            value!;
                                      });
                                    },
                                    title: Text(
                                      UserSpecialRights[index]["title"],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          ),
                          //Facility title and add delete button part
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 10, right: 110),
                            child: const Text(
                              "Active Status",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                          ),

                          //Active Inactive checkbox part
                          SizedBox(
                              height: size.height.h / 10,
                              width: size.width.w / 15,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: ActiveInactive.length,
                                itemBuilder: (context, index) =>
                                    CheckboxListTile(
                                  value: ActiveInactive[index]["isChecked"],
                                  onChanged: (value) {
                                    setState(() {
                                      ActiveInactive[index]["isChecked"] =
                                          value!;
                                    });
                                  },
                                  title: Text(
                                    ActiveInactive[index]["title"],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                          Container(
                            width: size.width / 5,
                            height: size.height / 15,
                            margin: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.blue;
                                    }
                                    return Colors.white;
                                  },
                                ),
                              ),
                              //on press response code
                              onPressed: () {},
                              child: const Text(
                                'Delete User',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

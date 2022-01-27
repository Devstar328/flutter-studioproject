// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../main.dart';
import './home.dart';
import './contact.dart';
import './profile.dart';
import './calendar.dart';
import './grades.dart';
import './test.dart';

class Assessment extends StatefulWidget {
  const Assessment({Key? key}) : super(key: key);

  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  int counter = 2;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  get validateAndSubmit => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0), // here the desired height
        child: AppBar(
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: SizedBox(
              height: 55,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Stack(
                children: <Widget>[
                  IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      }),
                  counter != 0
                      ? Positioned(
                          right: 11,
                          top: 11,
                          child: new Container(
                            padding: const EdgeInsets.all(2),
                            decoration: new BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: Text(
                              '$counter',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Stack(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                ],
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFBA509D), Color(0xFF39459B)])),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       counter++;
      //     });
      //   },
      //   child: const Icon(Icons.add),
      // ),
      endDrawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFBA509D), Color(0xFF39459B)]),
              ),
              accountName: const Text("Jhon Doe"),
              accountEmail: const Text("Beginner"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/user.png'),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Home()));
              },
            ),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Profile()));
              },
            ),
            ListTile(
              title: const Text("Calendar"),
              leading: const Icon(Icons.calendar_today),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Calendar()));
              },
            ),
            ListTile(
              title: const Text("Grades"),
              leading: const Icon(Icons.school),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Grades()));
              },
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.inbox),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Contact()));
              },
            ),
            ListTile(
              title: const Text("Log out"),
              leading: const Icon(Icons.logout),
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      'Log out',
                      style: TextStyle(
                        color: Color(0xFFBA509D),
                      ),
                    ),
                    content: const Text(
                      'Are you sure you want to log out?',
                      style: TextStyle(
                        color: Color(0xFFBA509D),
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF39459B),
                        ),
                      ),
                      TextButton(
                        onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const MyApp()))
                        },
                        child: const Text(
                          'Log out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFBA509D),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: .0, right: 1.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 20.0,
                                right: 15.0),
                            decoration: new BoxDecoration(
                              color: Color(0xFF2F449B),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('assets/images/test.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('Quick Test 1 ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                          )),
                                      Text(
                                        'AA1DX | 04/04/2021',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: const Text(
                                    '78%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: .0, right: 1.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 20.0,
                                right: 15.0),
                            decoration: new BoxDecoration(
                              color: Color(0xFF2F449B),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('assets/images/test.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('Quick Test 2 ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                          )),
                                      Text(
                                        'AA1DX | 04/04/2021',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: const Text(
                                    '86%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: .0, right: 1.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 20.0,
                                right: 15.0),
                            decoration: new BoxDecoration(
                              color: Color(0xFF2F449B),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('assets/images/test.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('Quick Test 3 ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                          )),
                                      Text(
                                        'AA1DX | 04/04/2021',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: const Text(
                                    '100%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: .0, right: 1.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 20.0,
                                right: 15.0),
                            decoration: new BoxDecoration(
                              color: Color(0xFF2F449B),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('assets/images/test.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('Quick Test 4 ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                          )),
                                      Text(
                                        'AA1DX | 04/04/2021',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextButton(
                                    child: const Text(
                                      'START',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Color(0xFF2F449B)),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text(
                                            'ACCESS CODE',
                                            style: TextStyle(
                                              color: Color(0xFFBA509D),
                                            ),
                                          ),
                                          content: const TextField(
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Color(0xFF2F449B)),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4)),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Color(0xFF2F449B)),
                                              ),
                                              labelText: 'Code',
                                              labelStyle: TextStyle(
                                                color: Color(0xFF2F449B),
                                              ),
                                              hintText: 'Enter Access Code',
                                              hintStyle: TextStyle(
                                                color: Color(0xFF2F449B),
                                              ),
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            const Test()))
                                              },
                                              child: const Text(
                                                'START',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFF2F449B),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: .0, right: 1.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 20.0,
                                right: 15.0),
                            decoration: new BoxDecoration(
                              color: Color(0xFF2F449B),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('assets/images/test.png'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('Quick Test 5 ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                          )),
                                      Text(
                                        'AA1DX | 04/04/2021',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child:
                                        Image.asset('assets/images/rock.png'),
                                  ),
                                )
                              ],
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
      ),
    );
  }
}

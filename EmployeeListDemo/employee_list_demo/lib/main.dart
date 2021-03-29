import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:employee_list_demo/AddEmployee.dart';
import 'package:employee_list_demo/EmployeeChangeNotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Employee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EmployeeChangeNotifier>(
      create: (context) => EmployeeChangeNotifier(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => EmployeeListPage(),
          '/addEmp': (context) => AddEmployee()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class EmployeeListPage extends StatefulWidget {
  EmployeeListPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  EmployeeListState createState() => EmployeeListState();
}

class EmployeeListState extends State<EmployeeListPage> {
  List<Employee> employees = List();

  //'http://dummy.restapiexample.com/api/v1/employees'

  @override
  void initState() {

    /*employees.add(Employee(id: 1,name: 'Shady',age: 23,salary: 1200,image: ''));
    employees.add(Employee(id: 1,name: 'Shady',age: 23,salary: 1200,image: ''));
    employees.add(Employee(id: 1,name: 'Shady',age: 23,salary: 1200,image: ''));*/

    //GET all employees data
  }


  @override
  void didChangeDependencies() {
    Provider.of<EmployeeChangeNotifier>(context).getAllEmployees('http://dummy.restapiexample.com/api/v1/employees');
  }

  void addEmployee() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Employee'),
      ),
      body: Consumer<EmployeeChangeNotifier>(
        builder: (context, value, child) {

        return ListView.builder(
            itemCount: value.employees.length,
            itemBuilder: (context, index) {
              Employee emp = value.employees[index];
              return ListTile(
                title: Text(
                  '${emp.employeeName}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                subtitle: Text(
                  'Age ${emp.employeeAge}',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              );
            }) ; } ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addEmp');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

/*void getData() async{
    getAllEmployees('http://dummy.restapiexample.com/api/v1/employees').then((value) {employees = value ;setState(() {

    });});
  }*/

}

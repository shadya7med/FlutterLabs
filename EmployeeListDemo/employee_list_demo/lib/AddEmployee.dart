import 'package:dio/dio.dart';
import 'package:employee_list_demo/Employee.dart';
import 'package:employee_list_demo/EmployeeChangeNotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEmployee extends StatefulWidget {
  AddEmployee({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AddEmployeeState();
}

class AddEmployeeState extends State<AddEmployee> {


  final TextEditingController _nameTxtEdtCrtl = TextEditingController();
  final TextEditingController _ageTxtEdtCrtl = TextEditingController();


  @override
  void dispose() {
    _nameTxtEdtCrtl.dispose();
    _ageTxtEdtCrtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            //return data
            //pop current page
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),title: Text('Add Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Employee Name'),controller: _nameTxtEdtCrtl,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Employee Age'),controller: _ageTxtEdtCrtl,
            ),
            Consumer<EmployeeChangeNotifier>(builder: (context, value, child) {
              return ElevatedButton(onPressed: () {
                value.sendEmployeeData(Employee.post(name:_nameTxtEdtCrtl.text,age: _ageTxtEdtCrtl.text));
                Navigator.pop(context);
              }, child: Text('ADD')) ;
            },

            )
          ],
        ),
      ),
    );
  }



}

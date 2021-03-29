import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'Employee.dart';

class EmployeeChangeNotifier extends ChangeNotifier {
  List<Employee> employees = [];

  EmployeeChangeNotifier();

  void getAllEmployees(String url) {
    Dio().get(url).then((response) {
      employees.clear();
      employees.addAll((response.data['data'] as List)
          .map((employee) => Employee.fromJSON(employee))
          .toList(growable: true));
      notifyListeners();
    });
  }

  void sendEmployeeData(Employee employee) {
    Dio().post('http://dummy.restapiexample.com/api/v1/create',
            data: employee.toJson(employee))
        .then((value) {
      employees.add(Employee.post(name:value.data['data']['name'],age: value.data['data']['age']));
      notifyListeners();

    });


  }
}

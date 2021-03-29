class Employee {
  String id;

  String employeeName;
  String employeeSalary;

  String employeeAge;
  String profileImage;

  Employee({String id, String name, String salary, String age, String image}) {
    this.id = id;
    employeeName = name;
    employeeSalary = salary;
    employeeAge = age;
    profileImage = image;
  }

  Employee.post({String name, String age}) {
    this.id = "";
    employeeName = name;
    employeeSalary = "2500";
    employeeAge = age;
    profileImage = "";
  }

  Employee.fromJSON(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'] ?? "";
    employeeName = parsedJson['employee_name'] ?? "";
    employeeSalary = parsedJson['employee_salary'] ?? "";
    employeeAge = parsedJson['employee_age'] ?? "";
    profileImage = parsedJson['profile_image'] ?? "";
  }

  Map<String, dynamic> toJson(Employee employee) {
    return {
      "name": employee.employeeName,
      "salary": employee.employeeSalary,
      "age": employee.employeeAge
    };
  }
}

void main()
{
  Employee emp = new Employee();
  emp.setName('Google');
  emp.setAge(40);
  print([emp.getName(),emp.getAge()]);
  Employee emp1 = new Employee();
  print(emp1.getName());
  print(emp1.getAge());
}

class Employee
{
  String name = '';
  int age = 0;

  Employee()
  {
    name = 'Android';
    age = 10;
  }

  String getName()
  {
    return name;
  }
  int getAge()
  {
    return age;
  }

  void setName(String name)
  {
    this.name = name;
  }

  void setAge(int age)
  {
    this.age = age;
  }
}

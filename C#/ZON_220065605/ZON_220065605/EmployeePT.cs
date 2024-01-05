using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class EmployeePT : Employee
    {
        public decimal Comm { get; set; }

        public EmployeePT()
        {

        }

        public EmployeePT(int age, int id, string name, decimal salary)
        {
            EmployeeAge = age;
            EmployeeID = id;
            EmployeeName = name;
            EmployeeSalary = salary;
            salary = 50000;
        }

        public override void ShowEmployee()
        {
            Console.WriteLine("Emplyee ID: " + EmployeeID + ", Employee Name: " + EmployeeName + ", Employee Age: " + "Your Password: "+ GetPass() + EmployeeAge + ", Employee Salary: " + EmployeeSalary + ", Commision: " + Comm + ", Part Time");
        }

    }
}








































       
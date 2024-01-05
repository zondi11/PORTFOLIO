using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Employee:IComparable
    {
        public int EmployeeAge { get; set; }
        public int EmployeeID { get; set; }
        public string EmployeeName { get; set; }
        public decimal EmployeeSalary { get; set; }

        public Employee()
        {

        }

        public Employee(int age, int id, string name)
        {
            EmployeeAge = age;
            EmployeeID = id;
            EmployeeName = name;
        }

        public string GetPass()
        {
            
            string str = EmployeeName.Substring(1, 3);
            int yr = 65 - EmployeeAge;

            string password = str + yr.ToString();
            return "your password is: " + password;

        }

        public virtual void ShowEmployee()
        {
            Console.WriteLine("Emplyee ID: " + EmployeeID +  ", Employee Name: " + EmployeeName + ", Employee Age: " + EmployeeAge + ", Employee Salary: " + EmployeeSalary + "Password: " + GetPass());
        }

        public int CompareTo(object o)

        {

            Employee temp = (Employee)o;

            if (this.EmployeeSalary > temp.EmployeeSalary)

                return 1;

            else return -1;

        }


    }
}

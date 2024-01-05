using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Employee E = new Employee() {EmployeeID=1234, EmployeeName="Thabo Mbeki", EmployeeAge=62, EmployeeSalary=820000, };
            E.ShowEmployee();

            EmployeePT p = new EmployeePT() { EmployeeID = 1234, EmployeeName = "Fiona", EmployeeAge = 32, EmployeeSalary = 50000, Comm = 12000 };
            p.ShowEmployee();


            Console.ReadLine();
        }
    }
}

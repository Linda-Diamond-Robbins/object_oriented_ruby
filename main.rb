main.rb
require './employee.rb'
require './manager.rb'
require './intern.rb'

employee = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee])
manager.print_info
manager.send_report

intern = Intern.new(first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true)
intern.print_info
intern.send_report
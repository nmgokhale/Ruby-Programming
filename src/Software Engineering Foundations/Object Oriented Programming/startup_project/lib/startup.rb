require "employee"

class Startup

    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = {}
        salaries.each { |title, salary| @salaries[title] = salary }
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(startup)
        self.funding > startup.funding
    end

    def hire(employee_name, title)
        if !self.valid_title?(title)
            raise "Invalid Title!"            
        else
            new_employee = Employee.new(employee_name, title)
            @employees << new_employee
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        salary_to_pay = @salaries[employee.title]
        if @funding >= salary_to_pay
            employee.pay(salary_to_pay)
            @funding -= salary_to_pay
        else
            raise "Sorry!Not enough funding to pay the salary"
        end
    end

    def payday
        @employees.each { |emp| self.pay_employee(emp) }
    end

    def average_salary
        sum_salaries = 0
        @employees.each { |emp| sum_salaries += @salaries[emp.title] }
        sum_salaries / (@employees.length * 1.0)
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        startup.salaries.each do |new_title, new_salary|  # Important
            if !@salaries.has_key?(new_title)
                @salaries[new_title] = new_salary
            end
        end

        startup.employees.each do |new_emp|
            @employees << new_emp
        end
        startup.close
    end
    
end

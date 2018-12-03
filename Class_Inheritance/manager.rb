require_relative "employee"

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss, employees)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @employees = employees
    end

    def bonus(multiplier)
        sum = 0
        employees.each do |employee|
            sum += employee.salary
        end

        
        bonus = sum * multiplier
    end
end
p David = Employee.new("David", "TA", 10000, "Darren")
p Shawna = Employee.new("Shawna", "TA", 12000, "Darren")
p Darren = Manager.new("Darren", "TA Manager", 78000, "Ned", [David, Shawna])
p Ned = Manager.new("Ned", "Founder", 1000000, nil, [Darren, Shawna, David])

p Ned.bonus(5) # => 500_000
p Darren.bonus(4) # => 88_000
p David.bonus(3) # => 30_000
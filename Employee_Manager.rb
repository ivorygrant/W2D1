class Employee
  attr_reader :salary
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    self.boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier

  end

  def boss=(boss)
    @boss = boss
    boss.employees.push(self) if boss

  end

end

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss)
    super
    @employees = []

  end

  def bonus(multiplier)
    employee_salary * multiplier
  end

  def employee_salary
    sum_employees = 0

    @employees.each do |employee|
      if employee.is_a?(Manager)
        sum_employees += employee.employee_salary + employee.salary
      else
        sum_employees += employee.salary
      end

    end
    sum_employees
  end

end

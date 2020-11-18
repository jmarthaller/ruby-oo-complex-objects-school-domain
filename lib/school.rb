# code here!
require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster 
    @roster
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade

    if !@roster.include?(grade)
      roster[grade] = []
    end
    roster[grade] << student_name
  end

  def grade(grade_num)
    roster[grade_num]
  end

  def sort
    @roster.each { |grade, name_pair| roster[grade] = name_pair.sort }
      #binding.pry
  end

end
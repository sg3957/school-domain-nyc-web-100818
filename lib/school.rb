class School

attr_accessor :roster

attr_reader :name

  def initialize(name, roster={})
    @name = name
    @roster = roster

  end

  def add_student(name, grade)
    roster[grade] = [] unless @roster[grade]
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each do |grade, student_array|
      @roster[grade] = student_array.sort
    end
  end




end

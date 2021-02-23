class Course
  attr_reader :name, :professor, :students

  def initialize(name, professor)
    @name = name
    @professor = professor
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def houses_represented
    all_houses = @students.uniq do |student|
      student.house
    end

    all_houses.map do |student|
      student.house
    end
  end
end

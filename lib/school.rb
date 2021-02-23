class School
  attr_reader :name, :houses, :courses

  def initialize(name, houses)
    @name = name
    @houses = houses
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def sort(student)
    student.house = @houses.sample
  end

  def sort_students
    @courses.each do |course|
      course.students.each do |student|
        sort(student)
      end
    end
  end

  def student_names
    student_names = []
    @courses.each do |course|
      course.students.each do |student|
        student_names << student.name
      end
    end
    student_names.uniq do |name|
      name
    end
  end
end

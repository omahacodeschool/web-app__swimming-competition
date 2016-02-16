#College Class goes here

class College < ActiveRecord::Base

  def conference_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end

  # Gets all the student ids for all students who attend a college
  # Returns the student ids in an Array

  def get_student_ids
    students = Student.where({"college_id" => self.id})
    student_ids = []
    students.each do |s|
      student_ids << s.id
    end
    return student_ids
  end


end
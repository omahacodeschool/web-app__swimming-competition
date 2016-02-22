require 'test_helper'

class CollegeTest < Minitest::Test  
  def setup
    super
    @u_of_co = College.new
    @u_of_co.college_name = "University of Colorado"
    @u_of_co.save

    @u_of_nm = College.new
    @u_of_nm.college_name = "University of New Mexico"
    @u_of_nm.save

    @u_of_il = College.new
    @u_of_il.college_name = "University of Illinois"
    @u_of_il.save

    @u_of_ia = College.new
    @u_of_ia.college_name = "University of Iowa"
    @u_of_ia.save

    @conf1 = Conference.new
    @conf1.conference_name = "West"
    @conf1.id = @u_of_co.conference_id 
    @conf1.save

    @conf2 = Conference.new
    @conf2.conference_name = "East"
    @conf2.id = @u_of_il.conference_id 
    @conf2.save  
  end

  def test_check_colleges_conferences
    assert_includes(@u_of_co.conf_name, @conf1)
    refute_includes(@u_of_il.conf_name, @conf1)
    assert_includes(@u_of_il.conf_name, @conf2)
    refute_includes(@u_of_co.conf_name, @conf2)
  end
end
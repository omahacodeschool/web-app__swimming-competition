require 'test_helper'

class CollegeTest < Minitest::Test
  
  def setup
    super

    @c1 = Conference.new
    @c1.conference_name = "North"
    @c1.save

    @c2 = Conference.new
    @c2.conference_name = "South"
    @c2.save
    
    @a = College.new
    @a.conference_id = @c1.id
    @a.save

    @b = College.new
    @b.college_name = "Brown"
    @b.save

    @stanford = College.new
    @stanford.college_name = "Stanford"
    @stanford.conference_id = @c1.id 
    @stanford.save

    @harvard = College.new
    @harvard.college_name = "Harvard"
    @harvard.conference_id = @c2.id
    @harvard.save
  end

  def test_find_conference_name
    assert_equal("North", @stanford.find_conference_name)
    refute_equal("North", @harvard.find_conference_name)
  end

  def test_set_errors
    
    assert_equal(["Must include valid College name"], @a.get_errors)
    assert_equal(["Must choose Conference"], @b.get_errors)
    assert_equal([], @stanford.set_errors)

  end

  def test_get_errors
  end

  def test_is_valid
  end
end
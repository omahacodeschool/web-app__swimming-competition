require 'test_helper'

class SchoolTest < Minitest::Test
  def setup
    super
    
    @conference_1 = Conference.new
    @conference_1.conference = "Upper"
    @conference_1.save

    @conference_2 = Conference.new
    @conference_2.conference = "Middle"
    @conference_2.save

    @conference_3 = Conference.new
    @conference_3.conference = nil
    @conference_3.save

    @school_1 = School.new
    @school_1.school = "Baxter"
    @school_1.conference_id = @conference_1.id
    @school_1.save

    @school_2 = School.new
    @school_2.school = "Triskelion"
    @school_2.conference_id = @conference_2.id
    @school_2.save

    @school_3 = School.new
    @school_3.school = "Xavier Academy"
    @school_3.conference_id = nil
    @school_3.save

    @competitor_1 = Competitor.new
    @competitor_1.first_name = "Ben"
    @competitor_1.last_name = "Grimm"
    @competitor_1.school_id = @school_1.id
    @competitor_1.save

    @competitor_2 = Competitor.new
    @competitor_2.first_name = "Susan"
    @competitor_2.last_name = "Storm"
    @competitor_2.school_id = @school_2.id
    @competitor_2.save

    @competitor_3 = Competitor.new
    @competitor_3.first_name = "Reed"
    @competitor_3.last_name = "Richards"
    @competitor_3.school_id = @school_3.id
    @competitor_3.save

  end

  def test_competitors
    assert_includes(@school_1.competitors, @competitor_1)
    assert_includes(@school_2.competitors, @competitor_2)
    assert_includes(@school_3.competitors, @competitor_3)
    refute_includes(@school_1.competitors, @competitor_3)
  end

  def test_conference
    assert_equal(@school_1.conference, "Upper")
    assert_equal(@school_2.conference, "Middle")
    assert_equal(@school_3.conference, "No Data")
  end

end
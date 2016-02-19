require 'test_helper'

class CompetitorTest < Minitest::Test
  def setup

    @competitor_1 = Competitor.new
    @competitor_1.first_name = "Ben"
    @competitor_1.last_name = "Grimm"
    @competitor_1.school_id = 1
    @competitor_1.save

    @competitor_2 = Competitor.new
    @competitor_2.first_name = "Susan"
    @competitor_2.last_name = "Storm"
    @competitor_2.school_id = 2
    @competitor_2.save

    @competitor_3 = Competitor.new
    @competitor_3.first_name = "Reed"
    @competitor_3.last_name = "Richards"
    @competitor_3.school_id = 2
    @competitor_3.save

    @result_1 = Result.new
    @result_1.event_id = 1
    @result_1.competitor_id = 1
    @result_1.time = 1
    @result_1.save

    @result_2 = Result.new
    @result_2.event_id = 2
    @result_2.competitor_id = 2
    @result_2.time = 2
    @result_2.save

    @result_3 = Result.new
    @result_3.event_id = 3
    @result_3.competitor_id = 3
    @result_3.time = 3
    @result_3.save

    @school_1 = School.new
    @school_1.school = "Baxter"
    @school_1.conference_id = 1
    @school_1.save

    @school_2 = School.new
    @school_2.school = "Triskelion"
    @school_2.conference_id = 2
    @school_2.save

    @school_3 = School.new
    @school_3.school = "Xavier Academy"
    @school_3.conference_id = 3
    @school_3.save

    @conference_1 = Conference.new
    @conference_1.conference = "Upper"
    @conference_1.save

    @conference_2 = Conference.new
    @conference_2.conference = "Middle"
    @conference_2.save

    @conference_3 = Conference.new
    @conference_3.conference = "Lower"
    @conference_3.save

  end

  def test_results
    assert_includes(@competitor_1.results, @result_1)
    assert_includes(@@competitor_2.results, @result_2)
    assert_includes(@@competitor_3.results, @result_3)
    refute_includes(@@competitor_1.results, @result_3)
  end

  def test_school_name
    assert_includes(@competitor_1.school_name, @school_1)
    assert_includes(@@competitor_2.school_name, @school_2)
    assert_includes(@@competitor_3.school_name, @school_3)
    refute_includes(@@competitor_1.school_name, @school_3)
  end

  def test_conference_name
    assert_includes(@competitor_1.conference_name, @conference_1)
    assert_includes(@@competitor_2.conference_name, @conference_2)
    assert_includes(@@competitor_3.conference_name, @conference_3)
    refute_includes(@@competitor_1.conference_name, @conference_3)
  end

  def test_conference_id
    assert_includes(@competitor_1.conference_id, @conference_1)
    assert_includes(@@competitor_2.conference_id, @conference_2)
    assert_includes(@@competitor_3.conference_id, @conference_3)
    refute_includes(@@competitor_1.conference_id, @conference_3)
  end

end